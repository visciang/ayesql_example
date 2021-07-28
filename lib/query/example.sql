-- name: create_table
-- docs: Create example table.
CREATE TABLE IF NOT EXISTS example (
    column_a text,
    column_b date
)


-- name: insert
-- docs: Insert some data in the example table.
INSERT INTO example(column_a, column_b)
VALUES (:column_a, :column_b)


-- name: all
-- docs: get all exmaple records
SELECT * FROM example
ORDER BY column_b :_order_by


-- name: ascending
ASC

-- name: descending
DESC