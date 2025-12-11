-- Script para agregar itemKey a los items existentes del menú
-- Ejecutar después de que se cree la columna item_key

-- ===== MENÚ 1: BEBIDAS =====
UPDATE menu_template_items SET item_key = 'licuados' WHERE LOWER(name) LIKE '%licuado%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'smoothies' WHERE LOWER(name) LIKE '%smoothie%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'sodas' WHERE LOWER(name) LIKE '%soda%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'agua-frutas' WHERE LOWER(name) LIKE '%agua%fruta%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'chocolate' WHERE LOWER(name) LIKE '%chocolate%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'frappe' WHERE LOWER(name) LIKE '%frapp%' AND LOWER(name) NOT LIKE '%mangonada%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'mangonada-frappe' WHERE LOWER(name) LIKE '%mangonada%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'cafe' WHERE LOWER(name) LIKE '%café%' OR LOWER(name) LIKE '%cafe%' AND item_key IS NULL;

-- ===== MENÚ 2: SNACKS =====
UPDATE menu_template_items SET item_key = 'sandwich-turkey' WHERE LOWER(name) LIKE '%sandwich%turkey%' OR LOWER(name) LIKE '%sándwich%turkey%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'sandwich-veggie' WHERE LOWER(name) LIKE '%sandwich%veggie%' OR LOWER(name) LIKE '%sándwich%veggie%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'sandwich-pollo' WHERE LOWER(name) LIKE '%sandwich%pollo%' OR LOWER(name) LIKE '%sándwich%pollo%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'sincronizada-res' WHERE LOWER(name) LIKE '%sincronizada%res%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'sincronizada-veg' WHERE LOWER(name) LIKE '%sincronizada%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'tenders' WHERE LOWER(name) LIKE '%tender%' AND LOWER(name) NOT LIKE '%burger%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'boneless-snack' WHERE LOWER(name) = 'boneless' AND item_key IS NULL;

-- ===== MENÚ 2: PAPAS =====
UPDATE menu_template_items SET item_key = 'papas' WHERE LOWER(name) = 'papas' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'beef-bowl' WHERE LOWER(name) LIKE '%beef%bowl%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'salchipapas' WHERE LOWER(name) LIKE '%salchipapa%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'boneless-bowl' WHERE LOWER(name) LIKE '%boneless%bowl%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'chicken-bowl' WHERE LOWER(name) LIKE '%chicken%bowl%' AND item_key IS NULL;

-- ===== MENÚ 2: TORTAS VEGETARIANAS =====
UPDATE menu_template_items SET item_key = 'milanesa-enchilado' WHERE LOWER(name) LIKE '%milanesa%enchilado%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'milanesa-empanizado' WHERE LOWER(name) LIKE '%milanesa%empanizado%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'fajita-gluten' WHERE LOWER(name) LIKE '%fajita%gluten%jengibre%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'gluten-pastor' WHERE LOWER(name) LIKE '%gluten%pastor%' AND item_key IS NULL;

-- ===== MENÚ 3: HAMBURGUESAS =====
UPDATE menu_template_items SET item_key = 'classic-beef' WHERE LOWER(name) LIKE '%classic%beef%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'classic-veggie' WHERE LOWER(name) LIKE '%classic%veggie%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-doble' WHERE LOWER(name) LIKE '%hamburguesa%doble%' AND LOWER(name) NOT LIKE '%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-doble-veggie' WHERE LOWER(name) LIKE '%hamburguesa%doble%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'salchi-burguer' WHERE LOWER(name) LIKE '%salchi%burguer%' AND LOWER(name) NOT LIKE '%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'salchi-burguer-veggie' WHERE LOWER(name) LIKE '%salchi%burguer%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-jalapeno' WHERE LOWER(name) LIKE '%hamburguesa%jalap%' AND LOWER(name) NOT LIKE '%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-jalapeno-veggie' WHERE LOWER(name) LIKE '%hamburguesa%jalap%veg%' AND item_key IS NULL;

-- ===== MENÚ 3: CARNES =====
UPDATE menu_template_items SET item_key = 'chicken-tender' WHERE LOWER(name) LIKE '%chicken%tender%burger%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-bbq' WHERE LOWER(name) LIKE '%hamburguesa%bbq%' AND LOWER(name) NOT LIKE '%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-bbq-veggie' WHERE LOWER(name) LIKE '%hamburguesa%bbq%veg%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'hamburguesa-hawaiana' WHERE LOWER(name) LIKE '%hamburguesa%hawaiana%' AND item_key IS NULL;

-- ===== MENÚ 4: TACOS =====
UPDATE menu_template_items SET item_key = 'tacos-res' WHERE LOWER(name) LIKE '%tacos%res%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'tacos-veg-enchilados' WHERE LOWER(name) LIKE '%tacos%veg%enchilado%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'tacos-vegetarianos' WHERE LOWER(name) LIKE '%tacos%vegetariano%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'tacos-pastor-veggie' WHERE LOWER(name) LIKE '%tacos%pastor%veg%' AND item_key IS NULL;

-- ===== MENÚ 4: TORTAS CON CARNITA =====
UPDATE menu_template_items SET item_key = 'fajita-beef' WHERE LOWER(name) LIKE '%fajita%beef%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'chicken-fajita' WHERE LOWER(name) LIKE '%chicken%fajita%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'arrachera-cheese' WHERE LOWER(name) LIKE '%arrachera%cheese%' AND item_key IS NULL;

-- ===== MENÚ 4: COMBOS =====
UPDATE menu_template_items SET item_key = 'combo-1' WHERE LOWER(name) LIKE '%combo%#1%' OR LOWER(name) LIKE '%combo%1%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-2' WHERE LOWER(name) LIKE '%combo%#2%' OR LOWER(name) LIKE '%combo%2%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-3' WHERE LOWER(name) LIKE '%combo%#3%' OR LOWER(name) LIKE '%combo%3%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-4' WHERE LOWER(name) LIKE '%combo%#4%' OR LOWER(name) LIKE '%combo%4%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-5' WHERE LOWER(name) LIKE '%combo%#5%' OR LOWER(name) LIKE '%combo%5%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-6' WHERE LOWER(name) LIKE '%combo%#6%' OR LOWER(name) LIKE '%combo%6%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-7' WHERE LOWER(name) LIKE '%combo%#7%' OR LOWER(name) LIKE '%combo%7%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-8' WHERE LOWER(name) LIKE '%combo%#8%' OR LOWER(name) LIKE '%combo%8%' AND item_key IS NULL;
UPDATE menu_template_items SET item_key = 'combo-9' WHERE LOWER(name) LIKE '%combo%#9%' OR LOWER(name) LIKE '%combo%9%' AND item_key IS NULL;

-- ===== MENÚ 4: SALSAS =====
UPDATE menu_template_items SET item_key = 'salsa' WHERE LOWER(name) LIKE '%salsa%' AND item_key IS NULL;
