unless Category.find_by(id: 1)
  Category.create(
      id: '1',
      name: 'if文',
      created_at: Date.current,
      updated_at: Date.current
    )
end
unless Category.find_by(id: 2)
  Category.create(
      id: '2',
      name: 'switch文',
      created_at: Date.current,
      updated_at: Date.current
    )
end
unless Category.find_by(id: 3)
  Category.create(
      id: '3',
      name: 'for文',
      created_at: Date.current,
      updated_at: Date.current
    )
end
