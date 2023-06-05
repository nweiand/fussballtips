class Spielpunkte:

    def __init__(self, heimtore:int, auswärtstore:int, tipp_heimtore:int, tipp_auswärtstore:int):
        self.h = heimtore
        self.a = auswärtstore
        self.t_h = tipp_heimtore
        self.t_a = tipp_auswärtstore

    def punkteberechnung(self):
        if self.h == self.t_h and self.a == self.t_a:
            return 4
        elif self.h != self.a and self.h - self.a == self.t_h - self.t_a:
            return 3
        elif self.h == self.a and self.t_h == self.t_a and (self.h == self.t_h +1 or self.h == self.t_h -1):
            return 3
        elif (self.h > self.a and self.t_h > self.t_a) or (self.h < self.a and self.t_h < self.t_a) or (self.h == self.a and self.t_h == self.t_a):
            return 2
        else:
            return 0

