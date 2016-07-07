# This file will generate a very long string of SQL code
#  that can then be copy and pasted into a SQL REPL.
require 'faker'

def create_users_table
  """
  CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(200) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp
  );
  """
end

def create_addresses_table
  """
  CREATE TABLE addresses (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    street VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(2) NOT NULL,
    zip VARCHAR(20) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  """
end

def create_posts_table
  """
  CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    title VARCHAR(160) NOT NULL,
    body TEXT NOT NULL,
    published INTEGER NOT NULL DEFAULT 0,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  """
end

def create_comments_table
  """
  CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    body TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
  );
  """
end

def create_tags_table
  """
  CREATE TABLE tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name VARCHAR(20) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp
  );
  """
end

def create_post_tags_table
  """
  CREATE TABLE post_tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT current_timestamp,
    updated_at DATETIME NOT NULL DEFAULT current_timestamp,
    post_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags(id),
    FOREIGN KEY (post_id) REFERENCES posts(id)
  );
  """
end

users = []
10.times do
  users.push(
    %{
      INSERT INTO users (first_name, last_name, email)
      VALUES ("#{Faker::Name.first_name}", "#{Faker::Name.last_name}", "#{Faker::Internet.email}");
    }
  )
end

posts = []
20.times do
  posts.push(%{
    INSERT INTO posts (user_id, title, body, published)
    VALUES (#{rand(1..users.length)}, "#{Faker::Hipster.sentence}", "#{Faker::Lorem.paragraph}", #{rand(0..1)});
  })
end

comments = []
30.times do
  comments.push(%{
    INSERT INTO comments (user_id, post_id, body)
    VALUES (#{rand(1..users.length)}, #{rand(1..posts.length)}, "#{Faker::Hipster.paragraph}");
  })
end

tags = []
15.times do
  tags.push(%{
    INSERT INTO tags (name) VALUES ("#{Faker::StarWars.planet}");
  })
end

post_tags = []
50.times do
  post_tags.push(%{
    INSERT INTO post_tags (post_id, tag_id) VALUES (#{rand(1..posts.length)}, #{rand(1..tags.length)});
  })
end


puts create_users_table, create_addresses_table, create_posts_table, create_comments_table, create_tags_table, create_post_tags_table
puts users, posts, comments, tags, post_tags
