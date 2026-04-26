controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/scholarpath" }
}
worker {
  name = "worker-scholarpath-1"
  controllers = ["controller-1.boundary.scholarpath.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/scholarpath-boundary"
}
