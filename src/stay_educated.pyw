import webbrowser
import schedule
import time


def open_stream():
    url = 'https://www.tagesschau.de/multimedia/livestreams/livestream-1-101~player.html'
    webbrowser.open_new_tab(url)


if __name__ == "__main__":
    schedule.every().day.at("20:00").do(open_stream)

    while 1:
        schedule.run_pending()
        time.sleep(5)
