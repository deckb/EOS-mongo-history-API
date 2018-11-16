echo "IDX 1/15: action_traces: act.account + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.account": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 2/15: action_traces: act.name + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.name": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 3/15: action_traces: act.data.receiver + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.data.receiver": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 4/15: action_traces: act.data.from + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.data.from": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 5/15: action_traces: act.data.to + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.data.to": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 6/15: action_traces: act.data.name + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.data.name": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 7/15: action_traces: act.data.voter + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.data.voter": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 8/15: action_traces: act.authorization.actor + _id"
mongo EOS --eval 'db.action_traces.createIndex({"act.authorization.actor": 1, "_id":1},{background: true, sparse: true})'

echo "IDX 9/15: transaction_traces: id"
mongo EOS --eval 'db.transaction_traces.createIndex({"id": 1},{background: true, sparse: true})'  

echo "IDX 10/15: account_controls: controlling_account"
mongo EOS --eval 'db.account_controls.createIndex({"controlling_account": 1},{background: true, sparse: true})'  

echo "IDX 11/15: pub_keys: public_key "
mongo EOS --eval 'db.pub_keys.createIndex({"public_key": 1},{background: true, sparse: true})'  

echo "IDX 12/15: accounts: name"
mongo EOS --eval 'db.accounts.createIndex({"name": 1},{background: true, sparse: true})'  

echo "IDX 13/15: accounts: name"
mongo EOS --eval 'db.transaction_traces.createIndex({"action_traces.act.authorization.actor" : 1})'

echo "IDX 14/15: accounts: name"
mongo EOS --eval 'db.transaction_traces.createIndex({"action_traces.inline_traces.receipt.receiver" : 1})'

echo "IDX 15/15: accounts: name"
mongo EOS --eval 'db.transaction_traces.createIndex({"action_traces.receipt.receiver" : 1})'