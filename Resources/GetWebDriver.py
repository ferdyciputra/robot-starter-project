from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.microsoft import EdgeChromiumDriverManager


def get_webdriver_path(browser_name):
    if browser_name.lower() == 'chrome':
        driver_path = ChromeDriverManager().install()
    elif browser_name.lower() == 'firefox':
        driver_path = GeckoDriverManager().install()
    elif browser_name.lower() == 'edge':
        driver_path = EdgeChromiumDriverManager().install()
    return driver_path
