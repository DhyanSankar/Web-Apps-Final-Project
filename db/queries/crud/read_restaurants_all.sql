SELECT 
    restaurant_id, restaurant_name, restaurant_food_type, restaurant_location, AVG(review_score) as score
FROM restaurants
JOIN reviews
    ON restaurant.restaurant_id = reviews.restaurant_id
WHERE reviews.restaurant_id = restaurant_id
ORDER BY score DESC