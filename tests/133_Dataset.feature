# language: en
Feature: Dataset

	Scenario Outline: Dataset
		Given Voici une variable <param>

		@Test_`_echo_test_`
		Examples:
		| param |
		| "Test ` echo test `" |

		@Test_^
		Examples:
		| param |
		| "Test ^" |

		@Test_^^
		Examples:
		| param |
		| "Test ^^" |

		@Test_,.+-_~@€çé=àû*?!
		Examples:
		| param |
		| "Test ,.+-_~@€çé=àû*?!" |

		@Test_;_echo_toto
		Examples:
		| param |
		| "Test ; echo toto" |

		@Test_./test
		Examples:
		| param |
		| "Test ./test" |

		@Test_'
		Examples:
		| param |
		| "Test '" |

		@Test_'test'
		Examples:
		| param |
		| "Test 'test'" |

		@Test_"
		Examples:
		| param |
		| "Test "" |

		@Test_"test"
		Examples:
		| param |
		| "Test "test"" |

		@Test_[test]
		Examples:
		| param |
		| "Test [test]" |

		@Test_\$test
		Examples:
		| param |
		| "Test \$test" |

		@Test_&_echo_test
		Examples:
		| param |
		| "Test & echo test" |

		@Test_#test
		Examples:
		| param |
		| "Test #test" |

		@Test_%test%
		Examples:
		| param |
		| "Test %test%" |

		@Test_|_echo_toto
		Examples:
		| param |
		| "Test | echo toto" |

		@Test_$(echo_test)
		Examples:
		| param |
		| "Test $(echo test)" |

		@Test_${echo_test}
		Examples:
		| param |
		| "Test ${echo test}" |

		@Test_$test
		Examples:
		| param |
		| "Test $test" |

		@Test_backslash_\\
		Examples:
		| param |
		| "Test backslash \\" |

		@Test_echo_test_<_/tmp
		Examples:
		| param |
		| "Test echo test < /tmp" |

		@Test_echo_test_>_/tmp
		Examples:
		| param |
		| "Test echo test > /tmp" |

		@Test_slash_/
		Examples:
		| param |
		| "Test slash /" |

		@Test_𨱏
		Examples:
		| param |
		| "Test 𨱏" |

		@Test_👩‍❤️‍💋‍👨
		Examples:
		| param |
		| "Test 👩‍❤️‍💋‍👨" |