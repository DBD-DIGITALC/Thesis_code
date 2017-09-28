
class Flock {
  ArrayList<Agent> agents; // An ArrayList for all the agents

  Flock() {
    agents = new ArrayList<Agent>(); // Initialize the ArrayList
  }

  void run() {
    for (Agent ag : agents) {
      ag.run(agents);  // Passing the entire list of agents to each boid individually
    }
  }

  void addAgent(Agent ag) {
    agents.add(ag);
  }
}