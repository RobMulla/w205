import tweepy

consumer_key = "nAwbOmzUnDOvj4wQr2aVEZAUZ";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "lXhNRWqngJNmVyi5xaUS51YxRYbeV5OMYR0yduqCpUkMs0MXiF";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "14313217-5na24mGCcRAljaf9RN8SILrIkzscf9qS0SlD5XclS";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "qYxwOTs2GL2ESFyyzdLZDjpXR2aYEiNG7yWF8QVDPjt9F";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



