unless Task.find_by(id: 1)
  Task.create(
      id: '1',
      category_id: '1',
      title: 'タイトル',
      content: 'テスト問題',
      created_at: Date.current,
      updated_at: Date.current
    )
end
