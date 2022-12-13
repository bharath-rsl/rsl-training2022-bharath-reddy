/**
 * Enum variable of all the vehicle types.
 */
enum VehicleType {
    CYCLE,
    BIKE,
    CAR,
    LORRY
}

/**
 * parent abstract class of all vehicle types.
 */
abstract class Vehicle {
    int noOfWheeles;
    String color;
    boolean isBreak;
    protected SteeringWheel steeringWheel;
    protected Engine engine;

    abstract public void startVehicle();

    abstract public void stopVehicle();

    public int getRegistration() {
        return (0000);
    }

    /**
     * Default method to horn
     */
    public void pressHorn() {
        System.out.println("sound on");
    }

    /**
     * Method to turn the vehicle to a specific angle
     * 
     * @param vehicleType
     * @param angle
     */
    public void turn(VehicleType vehicleType, int angle) {
        steeringWheel.setSteerDirection(angle);
        System.out.println(vehicleType + " has turned " + angle + " degrees");

    }

    /**
     * Method to display specs of the vechicle
     */
    public void displaySpecs() {
        if (engine != null) {
            System.out.println("HorsePower :" + engine.getHorsePower());
            System.out.println("Model no:" + engine.getModel());
        }
    }
}

/**
 * Cycle is type of Vehicle
 */

class Cycle extends Vehicle {

    // parameterized constructor to initialize cycle object.
    Cycle(String color) {
        this.color = color;

        // noofWheeles ,steeringWheel is inherited from Vehicle
        noOfWheeles = 2;
        steeringWheel = new SteeringWheel();
    }

    /**
     * Method to start the cycle
     */

    @Override
    public void startVehicle() {
        System.out.println("Cycle started");

    }

    /**
     * Method to stop the cycle
     */
    @Override
    public void stopVehicle() {
        isBreak = true;
        System.out.println("Cycle stopped");

    }

    /**
     * Method to ring bell of the cycle
     */
    @Override
    public void pressHorn() {
        System.out.println("Cycle bell is ringing");

    }

}

/**
 * Bike is type of Vehicle
 */

class Bike extends Vehicle {

    // parameterized constructor to initialize car object.
    Bike(String color, int horsePower, int model) {
        this.color = color;
        // noofWheeles,engine,steeringWheel are inherited from Vehicle
        noOfWheeles = 2;
        engine = new Engine();
        engine.setHorsePower(horsePower);
        engine.setModel(model);
        steeringWheel = new SteeringWheel();
    }

    /**
     * Method to start the bike
     */
    @Override
    public void startVehicle() {
        System.out.println("Bike started");
        isBreak = true;
        engine.setEngineOn(true);
    }

    /**
     * Method to stop the bike
     */
    @Override
    public void stopVehicle() {
        System.out.println("Bike stopped");
        engine.setEngineOn(false);
    }

    /**
     * Method to press bike horn
     */
    @Override
    public void pressHorn() {
        System.out.println("Bike horn pressed");
    }
}

/**
 * Car is type of Vehicle
 */

class Car extends Vehicle {

    // parameterized constructor to initialize car object.
    Car(String color, int horsePower, int model) {
        this.color = color;

        // noofWheeles,engine,steeringWheel are inherited from Vehicle
        noOfWheeles = 4;
        engine = new Engine();
        engine.setHorsePower(horsePower);
        engine.setModel(model);
        steeringWheel = new SteeringWheel();
    }

    /**
     * Method to start the car
     */
    @Override
    public void startVehicle() {
        System.out.println("car started");
        engine.setEngineOn(true);
    }

    /**
     * Mehotd to stop the car
     */
    @Override
    public void stopVehicle() {
        System.out.println("car stopped");
        isBreak = true;
        engine.setEngineOn(false);
    }

    /**
     * Method to press ar horn
     */
    @Override
    public void pressHorn() {
        System.out.println("car horn pressed");
    }
}

/**
 * Lorry is type of Vehicle
 */
class Lorry extends Vehicle {

    // parameterized constructor to initialize Lorry object.
    Lorry(String color, int horsePower, int model) {
        this.color = color;

        // noofWheeles,engine,steeringWheel are inherited from Vehicle
        noOfWheeles = 8;
        engine = new Engine();
        engine.setHorsePower(horsePower);
        engine.setModel(model);
        steeringWheel = new SteeringWheel();
    }

    /**
     * Method to start the lorry
     */
    @Override
    public void startVehicle() {
        System.out.println("Lorry started");
        engine.setEngineOn(true);
    }

    /**
     * Method to stop the lorry
     */
    @Override
    public void stopVehicle() {
        System.out.println("Lorry stopped");
        isBreak = true;
        engine.setEngineOn(false);
    }

    /**
     * Method to press the horn
     */
    @Override
    public void pressHorn() {
        System.out.println("Lorry horn pressed");
    }
}

/**
 * SteeringWheel is a component of vehicle
 */
class SteeringWheel {
    private int steerDirection;

    /**
     * Method to set the steer wheel to a specific angle.
     * 
     * @param angle
     */
    public void setSteerDirection(int angle) {
        steerDirection = angle;
    }

    /**
     * Method to get the angle ,steer wheel has turned.
     */
    public int getSteerDirection() {
        return (steerDirection);
    }
}

/**
 * This class has details of Engine used by Vehicle and is a component of
 * vehicle.
 */
class Engine {
    private boolean isEngineOn;
    private int horsePower;
    private int model;

    public int getModel() {
        return model;
    }

    /**
     * Method to set the model of the engine
     * 
     * @param model
     */
    public void setModel(int model) {
        this.model = model;
    }

    /**
     * Method to set the state of the engine to ON or OFF.
     * 
     * @param engineOn
     */
    public void setEngineOn(Boolean engineOn) {
        isEngineOn = engineOn;
    }

    /**
     * 
     * Method to get the state of the engine.
     */
    public boolean getEngineOn() {
        return (isEngineOn);
    }

    /**
     * Method to set the horsepower of the engine.
     * 
     * @param horsePower
     */
    public void setHorsePower(int horsePower) {
        this.horsePower = horsePower;
    }

    /**
     * Method to get the horsepower of the engine.
     */
    public int getHorsePower() {
        return (horsePower);
    }
}

/**
 * A factory class with a static method called produceVehicle to produce a
 * specific type of vehicle with given specs.
 */
class VehicleFactory {
    /**
     * Method that returns a Vehicle object from the given arguments(specs)
     * 
     * @param vehicleType
     * @param color
     * @param horsePower
     * @param model
     * @return
     */
    static public Vehicle produceVehcicle(VehicleType vehicleType, String color, int horsePower, int model) {

        Vehicle vehicle = null;
        switch (vehicleType) {
            case BIKE:
                vehicle = new Bike(color, horsePower, model);
                break;
            case CAR:
                vehicle = new Car(color, horsePower, model);
                break;
            case CYCLE:
                vehicle = new Cycle(color);
                break;
            case LORRY:
                vehicle = new Lorry(color, horsePower, model);
                break;
        }

        return (vehicle);
    }
}

// Main method to test the code.
public class VechicleManufacturer {
    public static void main(String[] args) {
        VehicleType vehicleType = VehicleType.CAR;
        Vehicle car = VehicleFactory.produceVehcicle(vehicleType, "blue", 1200, 400);
        car.startVehicle();
        car.turn(vehicleType, 30);
        car.pressHorn();
        car.displaySpecs();
        car.stopVehicle();
    }
}
