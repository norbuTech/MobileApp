const express = require('express');
const router = express.Router();
const controller = require('./controller')
const verifyToken = require('../user/middleware');

router.get('', verifyToken, controller.getAll); 
router.get('/:id', verifyToken, controller.getById); 
router.post('',verifyToken, controller.create);
router.put('/:id', verifyToken,controller.update);
router.delete('/:id', verifyToken,controller.remove);

module.exports = router;