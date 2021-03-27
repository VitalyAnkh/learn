from abc import ACB, abstractmethod
from enum import Enum


class MotorActuator(ABC):
    State = Enum("State", ("Traveling", "Blocked", "Stopped"))

    def __init__(self, state, pathFinder, attachment):
        self.attachment = attachment
        self.pathFinder = pathFinder
        self.state = state
        super().__init__()

    def requestTurn(self):
        turn = self.pathFinder.getNewPath()
        return turn

    def moveHoover(self):
        if thereIsObstacle():
            self.stop()
        else:
            self.turn(pathFinder.degrees)
            self.moveForward(pathFinder.distance)

    def stop(self):
        self.state = State.Stopped
        return

    @abstractmethod
    def thereIsObstabcle():
        pass

    @abstractmethod
    def turn(degree):
        pass

    @abstractmethod
    def moveForward(distance):
        pass
