package model;

public class Circle {

	private double xmiddle;
	private double ymiddle;
	private double radius;
	public double getXmiddle() {
		return xmiddle;
	}
	public void setXmiddle(double xmiddle) {
		this.xmiddle = xmiddle;
	}
	public double getYmiddle() {
		return ymiddle;
	}
	public void setYmiddle(double ymiddle) {
		this.ymiddle = ymiddle;
	}
	public double getRadius() {
		return radius;
	}
	public void setRadius(double radius) {
		this.radius = radius;
	}
	public double area() {
		return Math.PI*Math.pow(radius, 2);
	}
	public double distance(Circle circle2) {
		return Math.sqrt(Math.pow(this.xmiddle-circle2.getXmiddle(), 2)+Math.pow(this.ymiddle-circle2.getYmiddle(), 2));
	}
	@Override
	public String toString() {
		return "Circle [xmiddle=" + xmiddle + ", ymiddle=" + ymiddle + ", radius=" + radius + "]";
	}
	
}
