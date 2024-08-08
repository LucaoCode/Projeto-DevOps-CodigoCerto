import unittest
from flask import Flask
from flask_testing import TestCase
from app import main

class test_app(TestCase):
    def create_app(self):
        return TestCase.main
    
if __name__ == '__main__':
    unittest.main()