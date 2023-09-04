-- -- Movie.objects.all()
-- SELECT * FROM movies_movie;

-- -- User.objects.all()
-- SELECT * FROM movies_user;


SELECT * FROM movies_movie
-- 오름차순 정렬 Movie.objects.all().order_by('year')
ORDER BY year ;
-- 내림차순 정렬 Movie.objects.all().order_by('-year')
ORDER BY year DESC;