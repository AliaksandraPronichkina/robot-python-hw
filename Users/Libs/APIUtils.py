__author__ = 'Aliaksandra_Pronichk'

class APIUtils(object):

    @staticmethod
    def _get_url(url, host, port):
        return url.format(host=host, port=port)
