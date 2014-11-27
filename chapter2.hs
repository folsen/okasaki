module Main where

------------------
-- Exercise 2.1 --
------------------

suffixes :: [a] -> [[a]]
suffixes [] = [[]]
suffixes xs = xs : suffixes (drop 1 xs)

-- It takes O(n) time because it drops 1 element off the list and recurses
-- so it will recurse n times (and `drop` is O(1)).

-- Since we are not adding any data, each call to `drop` creates one
-- additional node that points to the new place in the list. The resulting
-- list from `suffixes` thus contains n pointers into the original
-- datastructure and we haven't copied any values. Since we aren't copying
-- any values and only create one additional node per suffix this runs in
-- O(n) space.

------------------
-- Exercise 2.2 --
------------------


