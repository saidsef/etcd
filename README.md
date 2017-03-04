# Docker Image for Etcd

etcd is a distributed key value store that provides a reliable way to store data across a cluster of machines. It’s open-source and available on GitHub. etcd gracefully handles leader elections during network partitions and will tolerate machine failure, including the leader.

Your applications can read and write data into etcd. A simple use-case is to store database connection details or feature flags in etcd as key value pairs. These values can be watched, allowing your app to reconfigure itself when they change.

Advanced uses take advantage of the consistency guarantees to implement database leader elections or do distributed locking across a cluster of workers.

[read more](https://coreos.com/etcd)

## Usage

Container default ports are `2379 2380`

```sh
docker run -d -P saidsef/etcd
```
