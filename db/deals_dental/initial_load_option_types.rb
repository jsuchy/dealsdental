require File.expand_path('../../../config/environment', __FILE__)

puts "Adding 'Color' options"
color_type = Spree::OptionType.create!({:name => "Color", :presentation => "Color", :position => 1})

Spree::OptionValue.create!({ :name => "Clear",        :presentation => "Clear",        :position =>  1, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Ceil Blue",    :presentation => "Ceil Blue",    :position =>  2, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Pink",         :presentation => "Pink",         :position =>  3, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Purple",       :presentation => "Purple",       :position =>  4, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Sky Blue",     :presentation => "Sky Blue",     :position =>  5, :option_type => color_type })
Spree::OptionValue.create!({ :name => "White",        :presentation => "White",        :position =>  6, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Blue",         :presentation => "Blue",         :position =>  7, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Mauve (Pink)", :presentation => "Mauve (Pink)", :position =>  8, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Green",        :presentation => "Green",        :position =>  9, :option_type => color_type })
Spree::OptionValue.create!({ :name => "Lavender",     :presentation => "Lavender",     :position => 10, :option_type => color_type })


puts "Adding 'Size' options"
size_type = Spree::OptionType.create!({:name => "Size", :presentation => "Size", :position => 2})

Spree::OptionValue.create!({ :name => "Small",     :presentation => "Small",     :position => 1, :option_type => size_type })
Spree::OptionValue.create!({ :name => "Medium",    :presentation => "Medium",    :position => 2, :option_type => size_type })
Spree::OptionValue.create!({ :name => "Large",     :presentation => "Large",     :position => 3, :option_type => size_type })
Spree::OptionValue.create!({ :name => "X-Large",   :presentation => "X-Large",   :position => 4, :option_type => size_type })
Spree::OptionValue.create!({ :name => "XX-Large",  :presentation => "XX-Large",  :position => 5, :option_type => size_type })
Spree::OptionValue.create!({ :name => "XXX-Large", :presentation => "XXX-Large", :position => 6, :option_type => size_type })


puts "Adding 'Cap Size' options"
cap_size_type = Spree::OptionType.create!({:name => "Cap Size", :presentation => "Cap Size", :position => 3})

Spree::OptionValue.create!({ :name => 'Blue - 21"', :presentation => 'Blue - 21"', :position => 1, :option_type => cap_size_type })
Spree::OptionValue.create!({ :name => 'Blue - 24"', :presentation => 'Blue - 24"', :position => 2, :option_type => cap_size_type })


puts "Adding 'Gown Size' options"
gown_size_type = Spree::OptionType.create!({:name => "Gown Size", :presentation => "Gown Size", :position => 4})

Spree::OptionValue.create!({ :name => 'Medium - 40" Length', :presentation => 'Medium - 40" Length', :position => 1, :option_type => gown_size_type })
Spree::OptionValue.create!({ :name => 'Large - 48" Length',  :presentation => 'Large - 48" Length',  :position => 2, :option_type => gown_size_type })


puts "Adding 'Eyewear Type' options"
eyewear_type = Spree::OptionType.create!({:name => "Eyewear Type", :presentation => "Eyewear Type", :position => 5})

Spree::OptionValue.create!({ :name => "Clear",                     :presentation => "Clear",                     :position => 1, :option_type => eyewear_type })
Spree::OptionValue.create!({ :name => "Fashion Style - Clear",     :presentation => "Fashion Style - Clear",     :position => 2, :option_type => eyewear_type })
Spree::OptionValue.create!({ :name => "U.V. Protective",           :presentation => "U.V. Protective",           :position => 3, :option_type => eyewear_type })
Spree::OptionValue.create!({ :name => "U.V. Protective - Fashion", :presentation => "U.V. Protective - Fashion", :position => 4, :option_type => eyewear_type })


puts "Adding 'Ortho Box Type' options"
ortho_box_type = Spree::OptionType.create!({:name => "Ortho Box Type", :presentation => "Ortho Box Type", :position => 6})

Spree::OptionValue.create!({ :name => "Denture Box",  :presentation => "Denture Box",      :position => 1, :option_type => ortho_box_type })
Spree::OptionValue.create!({ :name => "Retainer Box", :presentation => "Retainer Box", :position => 2, :option_type => ortho_box_type })


puts "Adding 'Sponge Type' options"
sponge_type = Spree::OptionType.create!({:name => "Sponge Type", :presentation => "Sponge Type", :position => 7})

Spree::OptionValue.create!({ :name => "Non-Sterile", :presentation => "Non-Sterile", :position => 1, :option_type => sponge_type })
Spree::OptionValue.create!({ :name => "Sterile",     :presentation => "Sterile",     :position => 2, :option_type => sponge_type })


puts "Adding 'Cotton Tip Applicator Size' options"
cotton_tip_applicator_type = Spree::OptionType.create!({:name => "Cotton Tip Applicator Size", :presentation => "Cotton Tip Applicator Size", :position => 8})

Spree::OptionValue.create!({ :name => '3" Non-Sterile', :presentation => '3" Non-Sterile', :position => 1, :option_type => cotton_tip_applicator_type })
Spree::OptionValue.create!({ :name => '6" Non-Sterile', :presentation => '6" Non-Sterile', :position => 2, :option_type => cotton_tip_applicator_type })


puts "Adding 'Cup Color' options"
cup_color_type = Spree::OptionType.create!({:name => "Cup Color", :presentation => "Cup Color", :position => 9})

Spree::OptionValue.create!({ :name => "White 5 Oz.",    :presentation => "White 5 Oz.",    :position => 1, :option_type => cup_color_type })
Spree::OptionValue.create!({ :name => "Blue 5 Oz.",     :presentation => "Blue 5 Oz.",     :position => 2, :option_type => cup_color_type })
Spree::OptionValue.create!({ :name => "Mauve 5 Oz.",    :presentation => "Mauve 5 Oz.",    :position => 3, :option_type => cup_color_type })
Spree::OptionValue.create!({ :name => "Green 5 Oz.",    :presentation => "Green 5 Oz.",    :position => 4, :option_type => cup_color_type })
Spree::OptionValue.create!({ :name => "Lavender 5 Oz.", :presentation => "Lavender 5 Oz.", :position => 5, :option_type => cup_color_type })

puts "Adding 'Dental Needle Type' options"
dental_needle_type = Spree::OptionType.create!({:name => "Dental Needle Type", :presentation => "Dental Needle Type", :position => 10})

Spree::OptionValue.create!({ :name => "27 Gauge Long - Yellow",      :presentation => "27 Gauge Long - Yellow",      :position => 1, :option_type => dental_needle_type })
Spree::OptionValue.create!({ :name => "27 Gauge Short - Yellow",     :presentation => "27 Gauge Short - Yellow",     :position => 2, :option_type => dental_needle_type })
Spree::OptionValue.create!({ :name => "30 Gauge Short - Blue",       :presentation => "30 Gauge Short - Blue",       :position => 3, :option_type => dental_needle_type })
Spree::OptionValue.create!({ :name => "30 Gauge Extra Short - Blue", :presentation => "30 Gauge Extra Short - Blue", :position => 4, :option_type => dental_needle_type })


puts "Adding 'Headrest Cover Size' options"
headrest_cover_size_type = Spree::OptionType.create!({:name => "Headrest Cover Size", :presentation => "Headrest Cover Size", :position => 11})

Spree::OptionValue.create!({ :name => '10" X 13"', :presentation => '10" X 13"', :position => 1, :option_type => headrest_cover_size_type })
Spree::OptionValue.create!({ :name => '10" X 10"', :presentation => '10" X 10"', :position => 2, :option_type => headrest_cover_size_type })


puts "Adding 'Sponge Size' options"
sponge_size_type = Spree::OptionType.create!({:name => "Sponge Size", :presentation => "Sponge Size", :position => 12})

Spree::OptionValue.create!({ :name => '2" X 2"', :presentation => '2" X 2"', :position => 1, :option_type => sponge_size_type })
Spree::OptionValue.create!({ :name => '3" X 3"', :presentation => '3" X 3"', :position => 2, :option_type => sponge_size_type })
Spree::OptionValue.create!({ :name => '4" X 4"', :presentation => '4" X 4"', :position => 3, :option_type => sponge_size_type })



puts "Adding 'Dispensing Tip Type' options"
dispensing_tip_type = Spree::OptionType.create!({:name => "Dispensing Tip Type", :presentation => "Dispensing Tip Type", :position => 13})

Spree::OptionValue.create!({ :name => "Pink (18 Gauge)",   :presentation => "Pink (18 Gauge)",   :position => 1, :option_type => dispensing_tip_type })
Spree::OptionValue.create!({ :name => "Yellow (20 Gauge)", :presentation => "Yellow (20 Gauge)", :position => 2, :option_type => dispensing_tip_type })
Spree::OptionValue.create!({ :name => "Black (19 Gauge)",  :presentation => "Black (19 Gauge)",  :position => 3, :option_type => dispensing_tip_type })
Spree::OptionValue.create!({ :name => "Grey (22 Gauge)",   :presentation => "Grey (22 Gauge)",   :position => 4, :option_type => dispensing_tip_type })
Spree::OptionValue.create!({ :name => "Blue (25 Gauge)",   :presentation => "Blue (25 Gauge)",   :position => 5, :option_type => dispensing_tip_type })


puts "Adding 'Cleaning Wipe Type' options"
cleaning_wipe_type = Spree::OptionType.create!({:name => "Cleaning Wipe Type", :presentation => "Cleaning Wipe Type", :position => 14})

Spree::OptionValue.create!({ :name => '160 Count Canister - 6" X 6.75"', :presentation => '160 Count Canister - 6" X 6.75"', :position => 1, :option_type => cleaning_wipe_type })
Spree::OptionValue.create!({ :name => '60 Count Canister - 10" X 10"',   :presentation => '60 Count Canister - 10" X 10"',   :position => 2, :option_type => cleaning_wipe_type })


puts "Adding 'Lotion Soap Type' options"
loation_soap_type = Spree::OptionType.create!({:name => "Lotion Soap Type", :presentation => "Lotion Soap Type", :position => 15})

Spree::OptionValue.create!({ :name => "1 Gallon Bottle",     :presentation => "1 Gallon Bottle",     :position => 1, :option_type => loation_soap_type })
Spree::OptionValue.create!({ :name => "16 Oz Bottle w/Pump", :presentation => "16 Oz Bottle w/Pump", :position => 2, :option_type => loation_soap_type })


puts "Adding 'Evacuation Trap Type' options"
evacuation_trap_type = Spree::OptionType.create!({:name => "Evacuation Trap Type", :presentation => "Evacuation Trap Type", :position => 16})

Spree::OptionValue.create!({ :name => 'Traps - 2 1/8"',             :presentation => 'Traps - 2 1/8"',             :position => 1, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Traps - 2 1/4"',             :presentation => 'Traps - 2 1/4"',             :position => 2, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Traps - 1 7/8"',             :presentation => 'Traps - 1 7/8"',             :position => 3, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Traps - 1 1/2"',             :presentation => 'Traps - 1 1/2"',             :position => 4, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Cuspidor Screens',           :presentation => 'Cuspidor Screens',           :position => 5, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Cuspidor Screens Universal', :presentation => 'Cuspidor Screens Universal', :position => 6, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'Saliva Ejector Screens',     :presentation => 'Saliva Ejector Screens',     :position => 7, :option_type => evacuation_trap_type })
Spree::OptionValue.create!({ :name => 'HVE Screens',                :presentation => 'HVE Screens',                :position => 8, :option_type => evacuation_trap_type })

puts "Adding 'Omni Care Type' options"
omni_care_type = Spree::OptionType.create!({:name => "Omni Care Type", :presentation => "Omni Care Type", :position => 16})

Spree::OptionValue.create!({ :name => 'Automatic Dispensor',           :presentation => 'Automatic Dispensor',           :position => 1, :option_type => omni_care_type })
Spree::OptionValue.create!({ :name => 'Antibacterial Hand Soap',       :presentation => 'Antibacterial Hand Soap',       :position => 2, :option_type => omni_care_type })
Spree::OptionValue.create!({ :name => 'Hand Sanitizer Spray - 400 ml', :presentation => 'Hand Sanitizer Spray - 400 ml', :position => 3, :option_type => omni_care_type })


puts "Adding 'Glove Size' options"
glove_size_type = Spree::OptionType.create!({:name => "Glove Size", :presentation => "Glove Size", :position => 17})

Spree::OptionValue.create!({ :name => "Extra Small (6)", :presentation => "Extra Small (6)", :position => 1, :option_type => glove_size_type })
Spree::OptionValue.create!({ :name => "Small (6 1/2)",   :presentation => "Small (6 1/2)",   :position => 2, :option_type => glove_size_type })
Spree::OptionValue.create!({ :name => "Medium (7 1/2)",  :presentation => "Medium (7 1/2)",  :position => 3, :option_type => glove_size_type })
Spree::OptionValue.create!({ :name => "Large (8 1/2)",   :presentation => "Large (8 1/2)",   :position => 4, :option_type => glove_size_type })
Spree::OptionValue.create!({ :name => "Extra Large (9)", :presentation => "Extra Large (9)", :position => 5, :option_type => glove_size_type })


puts "Adding 'Impression Material' options"
impression_material_type = Spree::OptionType.create!({:name => "Impression Material", :presentation => "Impression Material", :position => 18})

Spree::OptionValue.create!({ :name => "Light Body - Regular Set",     :presentation => "Light Body - Regular Set",     :position => 1, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Light Body - Fast Set",        :presentation => "Light Body - Fast Set",        :position => 2, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Medium Body - Regular Set",    :presentation => "Medium Body - Regular Set",    :position => 3, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Medium Body - Fast Set",       :presentation => "Medium Body - Fast Set",       :position => 4, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Monophase Body - Regular Set", :presentation => "Monophase Body - Regular Set", :position => 5, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Monophase Body - Fast Set",    :presentation => "Monophase Body - Fast Set",    :position => 6, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Heavy Body - Regular Set",     :presentation => "Heavy Body - Regular Set",     :position => 7, :option_type => impression_material_type })
Spree::OptionValue.create!({ :name => "Heavy Body - Fast Set",        :presentation => "Heavy Body - Fast Set",        :position => 8, :option_type => impression_material_type })


puts "Adding 'Putty Material Type' options"
putty_material_type = Spree::OptionType.create!({:name => "Putty Material Type", :presentation => "Putty Material Type", :position => 19})

Spree::OptionValue.create!({ :name => "Regular Set", :presentation => "Regular Set", :position => 1, :option_type => putty_material_type })
Spree::OptionValue.create!({ :name => "Fast Set",    :presentation => "Fast Set",    :position => 2, :option_type => putty_material_type })


puts "Adding 'Bite Registration Material Type' options"
bite_registration_material_type = Spree::OptionType.create!({:name => "Bite Registration Material Type", :presentation => "Bite Registration Material Type", :position => 20})

Spree::OptionValue.create!({ :name => "Unflavored - Regular Set",          :presentation => "Unflavored - Regular Set",          :position => 1, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Unflavored - Fast Set",             :presentation => "Unflavored - Fast Set",             :position => 2, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Unflavored - Super Fast Set",       :presentation => "Unflavored - Super Fast Set",       :position => 3, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Mint Choc. Chip - Fast Set",        :presentation => "Mint Choc. Chip - Fast Set",        :position => 4, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Mint Choc. Chip - Super Fast Set",  :presentation => "Mint Choc. Chip - Super Fast Set",  :position => 5, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "'Hard' Bite Unflavored - Fast Set", :presentation => "'Hard' Bite Unflavored - Fast Set", :position => 6, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Cadbite",                           :presentation => "Cadbite",                           :position => 7, :option_type => bite_registration_material_type })
Spree::OptionValue.create!({ :name => "Clear Bite Unflavored - Fast Set",  :presentation => "Clear Bite Unflavored - Fast Set",  :position => 8, :option_type => bite_registration_material_type })


puts "Adding 'Crown and Bridge Material Type' options"
crown_and_bride_material_type = Spree::OptionType.create!({:name => "Crown and Bridge Material Type", :presentation => "Crown and Bridge Material Type", :position => 21})

Spree::OptionValue.create!({ :name => "A1", :presentation => "A1", :position => 1, :option_type => crown_and_bride_material_type })
Spree::OptionValue.create!({ :name => "A2", :presentation => "A2", :position => 2, :option_type => crown_and_bride_material_type })
Spree::OptionValue.create!({ :name => "A3", :presentation => "A3", :position => 3, :option_type => crown_and_bride_material_type })
Spree::OptionValue.create!({ :name => "A3.5", :presentation => "A3.5", :position => 4, :option_type => crown_and_bride_material_type })
Spree::OptionValue.create!({ :name => "B1", :presentation => "B1", :position => 5, :option_type => crown_and_bride_material_type })
Spree::OptionValue.create!({ :name => "Bleach", :presentation => "Bleach", :position => 6, :option_type => crown_and_bride_material_type })


puts "Adding 'Impression Tray' options"
impression_tray_type = Spree::OptionType.create!({:name => "Impression Tray", :presentation => "Impression Tray", :position => 22})

Spree::OptionValue.create!({ :name => "Large Upper Perforated",    :presentation => "Large Upper Perforated",    :position =>  1, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Large Lower Perforated",    :presentation => "Large Lower Perforated",    :position =>  2, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Medium Upper Perforated",   :presentation => "Medium Upper Perforated",   :position =>  3, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Medium Lower Perforated",   :presentation => "Medium Lower Perforated",   :position =>  4, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Small Upper Perforated",    :presentation => "Small Upper Perforated",    :position =>  5, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Small Lower Perforated",    :presentation => "Small Lower Perforated",    :position =>  6, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Quadrant UL/LR Perforated", :presentation => "Quadrant UL/LR Perforated", :position =>  7, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Quadrant UR/LL Perforated", :presentation => "Quadrant UR/LL Perforated", :position =>  8, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Anterior Upper Perforated", :presentation => "Anterior Upper Perforated", :position =>  9, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Anterior Lower Perforated", :presentation => "Anterior Lower Perforated", :position => 10, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Quadrant UL/LR Solid",      :presentation => "Quadrant UL/LR Solid",      :position => 11, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Quadrant UR/LL Solid",      :presentation => "Quadrant UR/LL Solid",      :position => 12, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Anterior Upper Solid",      :presentation => "Anterior Upper Solid",      :position => 13, :option_type => impression_tray_type })
Spree::OptionValue.create!({ :name => "Anterior Lower Solid",      :presentation => "Anterior Lower Solid",      :position => 14, :option_type => impression_tray_type })


puts "Adding 'Bite Tray Type' options"
bite_tray_type = Spree::OptionType.create!({:name => "Bite Tray Type", :presentation => "Bite Tray Type", :position => 23})

Spree::OptionValue.create!({ :name => "Anterior - 35/Box",      :presentation => "Anterior - 35/Box",      :position => 1, :option_type => bite_tray_type })
Spree::OptionValue.create!({ :name => "Posterior - 50/Box",     :presentation => "Posterior - 50/Box",     :position => 2, :option_type => bite_tray_type })
Spree::OptionValue.create!({ :name => "Sideless Post - 50/Box", :presentation => "Sideless Post - 50/Box", :position => 3, :option_type => bite_tray_type })
Spree::OptionValue.create!({ :name => "Quadrant - 35/Box",      :presentation => "Quadrant - 35/Box",      :position => 4, :option_type => bite_tray_type })


puts "Adding 'Air/Water Syringe Type' options"
air_water_syringe_type = Spree::OptionType.create!({:name => "Air/Water Syringe Type", :presentation => "Air/Water Syringe Type", :position => 24})

Spree::OptionValue.create!({ :name => "Clear",           :presentation => "Clear",           :position => 1, :option_type => air_water_syringe_type })
Spree::OptionValue.create!({ :name => "White",           :presentation => "White",           :position => 2, :option_type => air_water_syringe_type })
Spree::OptionValue.create!({ :name => "Blue",            :presentation => "Blue",            :position => 3, :option_type => air_water_syringe_type })
Spree::OptionValue.create!({ :name => "Blue - 1500 Bag", :presentation => "Blue - 1500 Bag", :position => 4, :option_type => air_water_syringe_type })
Spree::OptionValue.create!({ :name => "Metal - 150 Bag", :presentation => "Metal - 150 Bag", :position => 5, :option_type => air_water_syringe_type })


puts "Adding 'Micro Applicator Type' options"
micro_applicator_type = Spree::OptionType.create!({:name => "Micro Applicator Type", :presentation => "Micro Applicator Type", :position => 25})

Spree::OptionValue.create!({ :name => "Super Fine - White", :presentation => "Super Fine - White", :position => 1, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Fine - Mauve",       :presentation => "Fine - Mauve",       :position => 2, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Fine - Yellow",      :presentation => "Fine - Yellow",      :position => 3, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Regular - Blue",     :presentation => "Regular - Blue",     :position => 4, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Regular - Green",    :presentation => "Regular - Green",    :position => 5, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Regular - Orange",   :presentation => "Regular - Orange",   :position => 6, :option_type => micro_applicator_type })
Spree::OptionValue.create!({ :name => "Regular - Purple",   :presentation => "Regular - Purple",   :position => 7, :option_type => micro_applicator_type })


puts "Adding 'Saliva Ejector' options"
saliva_ejector_type = Spree::OptionType.create!({:name => "Saliva Ejector", :presentation => "Saliva Ejector", :position => 26})

Spree::OptionValue.create!({ :name => "White",           :presentation => "White",           :position => 1, :option_type => saliva_ejector_type })
Spree::OptionValue.create!({ :name => "Clear",           :presentation => "Clear",           :position => 1, :option_type => saliva_ejector_type })
Spree::OptionValue.create!({ :name => "Assorted Colors", :presentation => "Assorted Colors", :position => 1, :option_type => saliva_ejector_type })


puts "Adding 'Aspirator Tip Type' options"
aspirator_tip_type = Spree::OptionType.create!({:name => "Aspirator Tip Type", :presentation => "Aspirator Tip Type", :position => 27})

Spree::OptionValue.create!({ :name => 'Blue - 1/16" Diameter', :presentation => 'Blue - 1/16" Diameter', :position => 1, :option_type => aspirator_tip_type })
Spree::OptionValue.create!({ :name => 'White - 1/8" Diameter', :presentation => 'White - 1/8" Diameter', :position => 2, :option_type => aspirator_tip_type })
Spree::OptionValue.create!({ :name => 'Green - 1/4" Diameter', :presentation => 'Green - 1/4" Diameter', :position => 3, :option_type => aspirator_tip_type })


puts "Adding 'Mask Type' options"
mask_type = Spree::OptionType.create!({:name => "Mask Type", :presentation => "Mask Type", :position => 28})

Spree::OptionValue.create!({ :name => "Blue - 100/Box",          :presentation => "Blue - 100/Box",          :position => 1, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Blue - 50/Box",           :presentation => "Blue - 50/Box",           :position => 2, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Blue - 50/Box - Tie-On",  :presentation => "Blue - 50/Box - Tie-On",  :position => 3, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Blue (Economy) - 50/Box", :presentation => "Blue (Economy) - 50/Box", :position => 4, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Pink - 100/Box",          :presentation => "Pink - 100/Box",          :position => 5, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Pink - 50/Box",           :presentation => "Pink - 50/Box",           :position => 6, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "White - 50/Box",          :presentation => "White - 50/Box",          :position => 7, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Lavender - 50/Box",       :presentation => "Lavender - 50/Box",       :position => 8, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Full Shield",             :presentation => "Full Shield",             :position => 9, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "1/2 Shield",              :presentation => "1/2 Shield",              :position => 10, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Dog",                     :presentation => "Dog",                     :position => 11, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Cat",                     :presentation => "Cat",                     :position => 12, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Rabbit",                  :presentation => "Rabbit",                  :position => 13, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Pig",                     :presentation => "Pig",                     :position => 14, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "Assorted",                :presentation => "Assorted",                :position => 15, :option_type => mask_type })
Spree::OptionValue.create!({ :name => "N95",                     :presentation => "N95",                     :position => 16, :option_type => mask_type })


puts "Adding 'Prophy Paste Type' options"
prophy_paste_type = Spree::OptionType.create!({:name => "Prophy Paste Type", :presentation => "Prophy Paste Type", :position => 29})

Spree::OptionValue.create!({ :name => "Coarse Assorted", :presentation => "Coarse Assorted", :position => 1, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Coarse Mint",     :presentation => "Coarse Mint",     :position => 2, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Coarse Cherry",   :presentation => "Coarse Cherry",   :position => 3, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Medium Assorted", :presentation => "Medium Assorted", :position => 4, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Medium Mint",     :presentation => "Medium Mint",     :position => 5, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Medium Cherry",   :presentation => "Medium Cherry",   :position => 6, :option_type => prophy_paste_type })
Spree::OptionValue.create!({ :name => "Fine Bubble Gum", :presentation => "Fine Bubble Gum", :position => 7, :option_type => prophy_paste_type })


puts "Adding 'Prophy Angle Type' options"
prophy_angle_type = Spree::OptionType.create!({:name => "Prophy Angle Type", :presentation => "Prophy Angle Type", :position => 30})

Spree::OptionValue.create!({ :name => "Firm Cup", :presentation => "Firm Cup", :position => 1, :option_type => prophy_angle_type })
Spree::OptionValue.create!({ :name => "Soft Cup", :presentation => "Soft Cup", :position => 2, :option_type => prophy_angle_type })


puts "Adding 'Barrier Film Type' options"
barrier_film_type = Spree::OptionType.create!({:name => "Barrier Film Type", :presentation => "Barrier Film Type", :position => 31})

Spree::OptionValue.create!({ :name => "N/S Edge - Clear in Disp. Box", :presentation => "N/S Edge - Clear in Disp. Box", :position => 1, :option_type => barrier_film_type })
Spree::OptionValue.create!({ :name => "N/S Edge - Blue in Disp. Box",  :presentation => "N/S Edge - Blue in Disp. Box",  :position => 2, :option_type => barrier_film_type })
Spree::OptionValue.create!({ :name => "N/S Edge - Clear no Box",       :presentation => "N/S Edge - Clear no Box",       :position => 3, :option_type => barrier_film_type })
Spree::OptionValue.create!({ :name => "N/S Edge - Blue no Box",        :presentation => "N/S Edge - Blue no Box",        :position => 4, :option_type => barrier_film_type })
Spree::OptionValue.create!({ :name => "Barrier Film Dispenser",        :presentation => "Barrier Film Dispenser",        :position => 5, :option_type => barrier_film_type })


puts "Adding 'Tray Sleeve Type' options"
tray_sleeve_type = Spree::OptionType.create!({:name => "Tray Sleeve Type", :presentation => "Tray Sleeve Type", :position => 32})

Spree::OptionValue.create!({ :name => '10 1/2" X 14" - 500/Box', :presentation => '10 1/2" X 14" - 500/Box', :position => 1, :option_type => tray_sleeve_type })
Spree::OptionValue.create!({ :name => '11 5/8" X 16" - 500/Box', :presentation => '11 5/8" X 16" - 500/Box', :position => 2, :option_type => tray_sleeve_type })


puts "Adding 'X-Ray Sensor Sleeve Type' options"
xray_sensor_sleeve_type = Spree::OptionType.create!({:name => "X-Ray Sensor Sleeve Type", :presentation => "X-Ray Sensor Sleeve Type", :position => 33})

Spree::OptionValue.create!({ :name => '1 5/8" X 8"',  :presentation => '1 5/8" X 8"',  :position => 1, :option_type => xray_sensor_sleeve_type })
Spree::OptionValue.create!({ :name => '2 1/2" X 10"', :presentation => '2 1/2" X 10"', :position => 2, :option_type => xray_sensor_sleeve_type })
Spree::OptionValue.create!({ :name => '1 3/8" X 8"',  :presentation => '1 3/8" X 8"',  :position => 3, :option_type => xray_sensor_sleeve_type })


puts "Adding 'Headrest Cover Type' options"
headrest_cover_type = Spree::OptionType.create!({:name => "Headrest Cover Type", :presentation => "Headrest Cover Type", :position => 34})

Spree::OptionValue.create!({ :name => '11" X 9 1/2" X 2" - 250/Box', :presentation => '11" X 9 1/2" X 2" - 250/Box', :position => 1, :option_type => headrest_cover_type })
Spree::OptionValue.create!({ :name => '14" X 9 1/2" X 2" - 250/Box', :presentation => '14" X 9 1/2" X 2" - 250/Box', :position => 2, :option_type => headrest_cover_type })


puts "Adding 'Barrier Envelope Type' options"
barrier_envelope_type = Spree::OptionType.create!({:name => "Barrier Envelope Type", :presentation => "Barrier Envelope Type", :position => 35})

Spree::OptionValue.create!({ :name => "#0 - 100/Box", :presentation => "#0 - 100/Box", :position => 1, :option_type => barrier_envelope_type })
Spree::OptionValue.create!({ :name => "#1 - 100/Box", :presentation => "#1 - 100/Box", :position => 2, :option_type => barrier_envelope_type })
Spree::OptionValue.create!({ :name => "#2 - 300/Box", :presentation => "#2 - 300/Box", :position => 3, :option_type => barrier_envelope_type })


puts "Adding 'Sterilization Pouch Size' options"
sterilization_pouch_type = Spree::OptionType.create!({:name => "Sterilization Pouch Size", :presentation => "Sterilization Pouch Size", :position => 36})

Spree::OptionValue.create!({ :name => '2.25" X 4"',                     :presentation => '2.25" X 4"',                     :position => 1, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '2.25" X 2.75"',                  :presentation => '2.25" X 2.75"',                  :position => 2, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '2" X 7.75"',                     :presentation => '2" X 7.75"',                     :position => 3, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '2.75" X 10"',                    :presentation => '2.75" X 10"',                    :position => 4, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '3.5" X 5.25"',                   :presentation => '3.5" X 5.25"',                   :position => 5, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '3.5" X 10" Box of 1000 Pouches', :presentation => '3.5" X 10" Box of 1000 Pouches', :position => 6, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '3.5" X 10"',                     :presentation => '3.5" X 10"',                     :position => 7, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '5.25" X 10"',                    :presentation => '5.25" X 10"',                    :position => 8, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '7.5" X 13"',                     :presentation => '7.5" X 13"',                     :position => 9, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '9" X 15"',                       :presentation => '9" X 15"',                       :position => 10, :option_type => sterilization_pouch_type })
Spree::OptionValue.create!({ :name => '13" X 20"',                      :presentation => '13" X 20"',                      :position => 11, :option_type => sterilization_pouch_type })


puts "Adding 'Sterilization Tubing Type' options"
sterilization_tubing_type = Spree::OptionType.create!({:name => "Sterilization Tubing Type", :presentation => "Sterilization Tubing Type", :position => 37})

Spree::OptionValue.create!({ :name => 'Clear - 2"',                  :presentation => 'Clear - 2"',                  :position => 1, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'Clear - 3"',                  :presentation => 'Clear - 3"',                  :position => 2, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'Clear - 4"',                  :presentation => 'Clear - 4"',                  :position => 3, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'Clear - 6"',                  :presentation => 'Clear - 6"',                  :position => 4, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'W/Defend Indicator Ink - 2"', :presentation => 'W/Defend Indicator Ink - 2"', :position => 5, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'W/Defend Indicator Ink - 3"', :presentation => 'W/Defend Indicator Ink - 3"', :position => 6, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'W/Defend Indicator Ink - 4"', :presentation => 'W/Defend Indicator Ink - 4"', :position => 7, :option_type => sterilization_tubing_type })
Spree::OptionValue.create!({ :name => 'W/Defend Indicator Ink - 6"', :presentation => 'W/Defend Indicator Ink - 6"', :position => 8, :option_type => sterilization_tubing_type })


puts "Adding 'Heat Sealer & Accessories' options"
heat_sealer_type = Spree::OptionType.create!({:name => "Heat Sealer & Accessories", :presentation => "Heat Sealer & Accessories", :position => 37})

Spree::OptionValue.create!({ :name => '110 Volt Unit',                     :presentation => '110 Volt Unit',                     :position => 1, :option_type => heat_sealer_type })
Spree::OptionValue.create!({ :name => 'Heating Elements - 3 Pack',         :presentation => 'Heating Elements - 3 Pack',         :position => 2, :option_type => heat_sealer_type })
Spree::OptionValue.create!({ :name => 'Upper Insulating Cloth - 3 Pack',   :presentation => 'Upper Insulating Cloth - 3 Pack',   :position => 3, :option_type => heat_sealer_type })
Spree::OptionValue.create!({ :name => 'Lower Insulating Cloth - 3 Pack',   :presentation => 'Lower Insulating Cloth - 3 Pack',   :position => 4, :option_type => heat_sealer_type })
Spree::OptionValue.create!({ :name => 'Silicone Strip (Opaque Plastic)',   :presentation => 'Silicone Strip (Opaque Plastic)',   :position => 5, :option_type => heat_sealer_type })
Spree::OptionValue.create!({ :name => 'Heat Sealer Repair Kit: 1 Heating Element, 1  Upper Cloth, 1 Lower Cloth, 1 Silicone Strip', :presentation => 'Heat Sealer Repair Kit: 1 Heating Element, 1  Upper Cloth, 1 Lower Cloth, 1 Silicone Strip', :position => 7, :option_type => heat_sealer_type })

puts "Adding 'Sterilization Indicator Size' options"
sterilization_indicator_type = Spree::OptionType.create!({:name => "Sterilization Indicator Size", :presentation => "Sterilization Indicator Size", :position => 38})

Spree::OptionValue.create!({ :name => '1/2"', :presentation => '1/2"', :position => 1, :option_type => sterilization_indicator_type })
Spree::OptionValue.create!({ :name => '3/4"', :presentation => '3/4"', :position => 2, :option_type => sterilization_indicator_type })
Spree::OptionValue.create!({ :name => '1"',   :presentation => '1"',   :position => 3, :option_type => sterilization_indicator_type })


puts "Adding 'Sterilization Wrap Size' options"
sterilization_wrap_type = Spree::OptionType.create!({:name => "Sterilization Wrap Size", :presentation => "Sterilization Wrap Size", :position => 39})

Spree::OptionValue.create!({ :name => "12x12 - 1000 Pack", :presentation => "12x12 - 1000 Pack", :position => 1, :option_type => sterilization_wrap_type })
Spree::OptionValue.create!({ :name => "15x15 - 1000 Pack", :presentation => "15x15 - 1000 Pack", :position => 2, :option_type => sterilization_wrap_type })
Spree::OptionValue.create!({ :name => "20x20 - 500 Pack",  :presentation => "20x20 - 500 Pack",  :position => 3, :option_type => sterilization_wrap_type })
Spree::OptionValue.create!({ :name => "24x24 - 500 Pack",  :presentation => "24x24 - 500 Pack",  :position => 4, :option_type => sterilization_wrap_type })
Spree::OptionValue.create!({ :name => "30x30 - 250 Pack",  :presentation => "30x30 - 250 Pack",  :position => 5, :option_type => sterilization_wrap_type })


puts "Adding 'Spore Testing Service Type' options"
spore_testing_service_type = Spree::OptionType.create!({:name => "Spore Testing Service Type", :presentation => "Spore Testing Service Type", :position => 40})

Spree::OptionValue.create!({ :name => "48 Tests Per Box", :presentation => "48 Tests Per Box", :position => 1, :option_type => spore_testing_service_type })
Spree::OptionValue.create!({ :name => "12 Tests Per Box", :presentation => "12 Tests Per Box", :position => 2, :option_type => spore_testing_service_type })


puts "Adding 'Mixing Tip Type' options"
mixing_tip_type = Spree::OptionType.create!({:name => "Mixing Tip Type", :presentation => "Mixing Tip Type", :position => 41})

Spree::OptionValue.create!({ :name => "Teal (Green) 6.5mm",    :presentation => "Teal (Green) 6.5mm",    :position => 1, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "Yellow 4.2mm",          :presentation => "Yellow 4.2mm",          :position => 2, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "Pink 5.4mm",            :presentation => "Pink 5.4mm",            :position => 3, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "Purple 7.5mm",          :presentation => "Purple 7.5mm",          :position => 4, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "48/Bag",                :presentation => "48/Bag",                :position => 5, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "100/Bag",               :presentation => "100/Bag",               :position => 6, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "48/Bag - Purple",       :presentation => "48/Bag - Purple",       :position => 7, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "Yellow",                :presentation => "Yellow",                :position => 8, :option_type => mixing_tip_type })
Spree::OptionValue.create!({ :name => "Bayonet Rings - 2/Pkg", :presentation => "Bayonet Rings - 2/Pkg", :position => 9, :option_type => mixing_tip_type })


puts "Adding 'Dispensing Gun Type' options"
dispensing_gun_type = Spree::OptionType.create!({:name => "Dispensing Gun Type", :presentation => "Dispensing Gun Type", :position => 42})

Spree::OptionValue.create!({ :name => "For HP Cartridge - 50ml", :presentation => "For HP Cartridge - 50ml", :position => 1, :option_type => dispensing_gun_type })
Spree::OptionValue.create!({ :name => "10:1 Gun",                :presentation => "10:1 Gun",                :position => 2, :option_type => dispensing_gun_type })


puts "Adding 'Oral Tip Type' options"
oral_tip_type = Spree::OptionType.create!({:name => "Oral Tip Type", :presentation => "Oral Tip Type", :position => 43})

Spree::OptionValue.create!({ :name => "Large for use with #VP-8104", :presentation => "Large for use with #VP-8104", :position => 1, :option_type => oral_tip_type })
Spree::OptionValue.create!({ :name => "Small for use with #VP-8104", :presentation => "Small for use with #VP-8104", :position => 2, :option_type => oral_tip_type })



puts "Adding 'Crown and Bridge Tip Type' options"
crown_and_bridge_tip_type = Spree::OptionType.create!({:name => "Crown and Bridge Tip Type", :presentation => "Crown and Bridge Tip Type", :position => 44})

Spree::OptionValue.create!({ :name => "10:1 Ratio & 4:1 Ratio", :presentation => "10:1 Ratio & 4:1 Ratio", :position => 1, :option_type => crown_and_bridge_tip_type })
Spree::OptionValue.create!({ :name => "1:1 Ratio", :presentation => "1:1 Ratio", :position => 2, :option_type => crown_and_bridge_tip_type })

