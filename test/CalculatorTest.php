<?php

require_once( dirname(__FILE__) . '/../lib/Calculator.php' );

class CalculatorTest extends PHPUnit_Framework_TestCase {

	protected $calculator;

	protected function setUp()
	{
		$this->calculator = new Calculator;
	}

	public function testAdd()
	{
		$this->assertEquals($this->calculator->add(5, 5), 10);
	}

}