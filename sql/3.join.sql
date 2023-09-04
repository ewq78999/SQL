-- -- 1번 유저가 작성한 모든 점수
-- SELECT * FROM movies_user
-- --  movies_scoire에서 movies_user.id(1번) = movies_score.user_id(2번)의 user foreign key가 같다는 것을 사용해서 합친 후 공통되는 user를 선택(user_id = id)
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;

-- Score.objects.filter(user_id=1)
-- User.objects.get(id=1).score_set.all()

-- 1번 영화의 카테고리
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category_movies.category_id = movies_category.id
-- WHERE movies_movie.id=1;

-- Movie.objects.get(id=1).categories.all()


-- @1번 유저가 작성한 모든 점수의 평균
-- -- USER.objects.get(id=1).score_set.all().aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id = 1;

-- -- @drama 카테고리에 속한 모든 영화
-- -- Category.objects.get(name='drama').movies.all()
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category.id = movies_category_movies.category_id
-- WHERE movies_category.name = 'drama';


-- -- User.objects.values('country').annotate(Count('id'))
-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;

-- 나라별 점수 평균
-- User.objects.values('country').annotate(Count('id')
SELECT country, COUNT(*), AVG(value) FROM movies_user
JOIN movies_score ON movies_user.id = movies_score.user_id
GROUP BY country;
