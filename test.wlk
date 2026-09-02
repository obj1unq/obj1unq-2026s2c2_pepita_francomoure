import pepita.*
describe "Tests de Pepita" {
test "energía inicial de pepita" {
	assert.equals(100, pepita.energia())
}
}

import example.pepita
describe "Tests de Pepita" {
test "energía inicial de pepita" {
	assert.equals(100, pepita.energia())
}
test "pepita vuela" {
          pepita.volar(5)
          assert.equals(85, pepita.energia())
}
}

test "pepita vuela" {
  pepita.energía(50) // Arrange
  pepita.volar(5)   // Act
  assert.equals(35, pepita.energia()) // Assert
}

---------------------------------------------------------------------------------

//2
test "pepita vuela" {
   pepita.energia(100) // Arrange
  
   pepita.volar(10)   // Act
   assert.equals(89, pepita.energia()) // Asser
  
   pepita.volar(1000)   // Act
   assert.equals(89, pepita.energia()) // Asser
 }

----------------------------------------------------------------------------------



describe "Tests de pepita" {
 test "energia inicial de pepita" {
   assert.equals(100, pepita.energia())
  }
  test "pepita vuela" {
   pepita.energia(50)
   pepita.volar(5)  
   assert.equals(35, pepita.energia())
  }
  test "pepita vuela muchos kilómetros, y ya no es fuerte" {
   pepita.volar(60)
   assert.notThat(pepita.esFuerte())
  }
  test "pepita vuela pocos kilómetros y se mantiene fuerte" {
    pepita.volar(10)
    assert.that(pepita.esFuerte())
  }
}


describe "Tests de pepita" {
  const alimento = alpiste
  method initialize() {
    pepita.energia(50)
  }
  test "pepita come" {
    pepita.comer(alimento)
    assert.equals(70, pepita.energia())
  }
  test "pepita come mucho" {
    pepita.comer(alimento)
    pepita.comer(alimento)
    assert.equals(90, pepita.energia())
  }
}




