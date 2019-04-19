var config = require('config-lite')(__dirname);
var Mongolass = require('mongolass');
var mongolass = new Mongolass();
// mongolass.connect(config.mongodb);
mongolass.connect(config.mongodb);

const User = mongolass.model('User', {
  name: { type: 'string' },
  password: { type: 'string' },
  avatar: { type: 'string' },
  gender: { type: 'string', enum: ['m', 'f', 'x'] },
  bio: { type: 'string' }
});

const res = User.findOne({name: 'jzg'}).exec();
res.then(user=>{
    console.log(user)
    mongolass.disconnect()
}).catch(err=>{
    console.log(err)
    mongolass.disconnect()
})
