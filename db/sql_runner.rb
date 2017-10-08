require('pg')

class SqlRunner

    def self.run(sql, values)
        begin
            db = PG.connect({dbname: 'codeclan_cinema', host: 'localhost'})
            db.prepare("request", sql)
            result = db.exec_prepared("request", values)
        ensure
            db.close()
        end
        return result
    end

end
