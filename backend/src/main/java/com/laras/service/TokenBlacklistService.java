package com.laras.service;

import com.laras.entity.TokenBlacklist;
import com.laras.repository.TokenBlacklistRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class TokenBlacklistService {

    private final TokenBlacklistRepository tokenBlacklistRepository;

    @Transactional
    public void blacklistToken(String token, LocalDateTime expirationDate) {
        if (!isTokenBlacklisted(token)) {
            TokenBlacklist blacklistedToken = TokenBlacklist.builder()
                    .token(token)
                    .expirationDate(expirationDate)
                    .blacklistedAt(LocalDateTime.now())
                    .build();
            tokenBlacklistRepository.save(blacklistedToken);
        }
    }

    public boolean isTokenBlacklisted(String token) {
        return tokenBlacklistRepository.existsByToken(token);
    }

    @Scheduled(fixedRate = 3600000) // Cada hora limpia tokens expirados
    @Transactional
    public void cleanupExpiredTokens() {
        tokenBlacklistRepository.deleteExpiredTokens(LocalDateTime.now());
    }
}
