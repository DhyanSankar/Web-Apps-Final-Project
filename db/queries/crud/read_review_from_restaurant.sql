SELECT review_id, review_score, review_description
FROM reviews
JOIN restaurants
    ON reviews.restaurant_id = restaurants.restaurant_id
WHERE reviews.restaurant_id = ?
ORDER BY review_score DESC
