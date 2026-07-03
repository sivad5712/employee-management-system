$collection = @{
  info = @{
    '_postman_id' = 'bD74De653ebA3E4a01bd70a4'
    name = 'New Collection'
    schema = 'https://schema.getpostman.com/json/collection/v2.1.0/collection.json'
  }
  item = @(
    @{
      name = 'GET /api/employees/2'
      request = @{
        method = 'GET'
        header = @()
        url = @{
          raw = 'http://localhost:8080/api/employees/2'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees', '2')
        }
      }
    },
    @{
      name = 'PUT /api/employees/2'
      request = @{
        method = 'PUT'
        header = @(@{key='Content-Type'; value='application/json'})
        body = @{
          mode = 'raw'
          raw = '{"firstName":"John","lastName":"Smith","email":"john.smith@example.com","department":"Engineering","designation":"Senior Software Engineer","salary":95000}'
          options = @{ raw = @{ language = 'json' } }
        }
        url = @{
          raw = 'http://localhost:8080/api/employees/2'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees', '2')
        }
      }
    },
    @{
      name = 'PATCH /api/employees/2/deactivate'
      request = @{
        method = 'PATCH'
        header = @(@{key='Content-Type'; value='application/json'})
        body = @{
          mode = 'raw'
          raw = '{"firstName":"John","lastName":"Smith","email":"john.smith@example.com","department":"Engineering","designation":"Senior Software Engineer","salary":95000}'
          options = @{ raw = @{ language = 'json' } }
        }
        url = @{
          raw = 'http://localhost:8080/api/employees/2/deactivate'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees', '2', 'deactivate')
        }
      }
    },
    @{
      name = 'GET /api/employees (1)'
      request = @{
        method = 'GET'
        header = @()
        url = @{
          raw = 'http://localhost:8080/api/employees'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees')
        }
      }
    },
    @{
      name = 'GET /api/employees (2)'
      request = @{
        method = 'GET'
        header = @()
        url = @{
          raw = 'http://localhost:8080/api/employees'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees')
        }
      }
    },
    @{
      name = 'POST /api/employees (1)'
      request = @{
        method = 'POST'
        header = @(@{key='Content-Type'; value='application/json'})
        body = @{
          mode = 'raw'
          raw = '{"firstName":"","lastName":"Doe","email":"wrong-email","department":"IT","designation":"Developer","salary":-1000}'
          options = @{ raw = @{ language = 'json' } }
        }
        url = @{
          raw = 'http://localhost:8080/api/employees'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees')
        }
      }
    },
    @{
      name = 'POST /api/employees (2)'
      request = @{
        method = 'POST'
        header = @(@{key='Content-Type'; value='application/json'})
        body = @{
          mode = 'raw'
          raw = '{"firstName":"","lastName":"Doe","email":"wrong-email","department":"IT","designation":"Developer","salary":-1000}'
          options = @{ raw = @{ language = 'json' } }
        }
        url = @{
          raw = 'http://localhost:8080/api/employees'
          protocol = 'http'
          host = @('localhost')
          port = '8080'
          path = @('api', 'employees')
        }
      }
    }
  )
}
$json = $collection | ConvertTo-Json -Depth 20
Set-Content -Path 'C:\Users\Siva D\OneDrive\Desktop\New Collection.postman_collection.json' -Value $json -Encoding UTF8
Write-Output 'File written successfully'
