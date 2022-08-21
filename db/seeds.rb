staff_table_names = %w(staff_members)

staff_table_names.each do |table_name|
  path = Rails.root.join("db", "seeds", Rails.env, table_name + ".rb")
  if File.exist?(path)
    puts "Creating #{table_name}..."
    require(path)
  end
end

administrator_table_names = %w(administrators)

administrator_table_names.each do |table_name|
  path = Rails.root.join("db", "seeds", Rails.env, table_name + ".rb")
  if File.exist?(path)
    puts "Creating #{table_name}..."
    require(path)
  end
end
