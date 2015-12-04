import sys
import logging
import unittest

class TestPy(unittest.TestCase):
    def setUp(self):
        logging.basicConfig(level=logging.DEBUG)

    def tearDown(self):
        pass

    def test_cilog_parser(self):
        self.assertEqual(None, None)

if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(TestPy)

    result = unittest.TextTestRunner(verbosity=2).run(suite)
    if result.wasSuccessful() is False:
        sys.exit(1)
