(use 'clojure.java.io)

(defn euler013 [lines]
  (-> (reduce + (map biginteger lines))
      (str)
      (.substring 0 10)))

(with-open [rdr (reader "numbers.txt")]
  (println (euler013 (line-seq rdr))))
