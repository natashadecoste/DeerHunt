(defn triple []
  (let [in (read-line) ]
  	(with-out-str (println( * 3 (read-string in))))
  	)
 )

(triple)