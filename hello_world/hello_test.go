package helloworld

import "testing"

func TestHello(t *testing.T) {
	expected := "Hello, World!"
	actual := hello("World!")
	if expected != actual {
		t.Errorf(" Test Failed !. expected=%s got=%s", expected, actual)
	}
}
