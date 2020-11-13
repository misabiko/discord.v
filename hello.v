module discordv 

import x.json2 as json

struct Hello {
pub mut:
	heartbeat_interval u64
}

pub fn (mut p Hello) from_json(f json.Any){
	mut obj := f.as_map()
	for k, v in obj{
		match k {
			'heartbeat_interval' {p.heartbeat_interval = u64(v.f64())}
			else{}
		}
	}
}