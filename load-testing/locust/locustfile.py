from locust import HttpUser, task, between, events
class ScholarPathUser(HttpUser):
    wait_time = between(0.5, 3)
    host = "https://scholarpath.internal"
    @task(3)
    def list(self):  self.client.get("/api/list")
    @task(2)
    def detail(self): self.client.get("/api/detail/sample-id")
    @task(1)
    def search(self): self.client.get("/api/search?q=test")
class AdminUser(HttpUser):
    wait_time = between(2, 8)
    host = "https://admin.scholarpath.internal"
    @task
    def dashboard(self): self.client.get("/dashboard")
class APIUser(HttpUser):
    wait_time = between(0.1, 0.5)
    host = "https://api.scholarpath.internal"
    @task
    def healthz(self): self.client.get("/healthz")
