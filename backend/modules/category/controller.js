const categoryConstant = require('../../utils/constants/category.constants');
const schema = require('./schema');

const getAll = async (request, response) => {
    // select * from table
    const data = await schema.find({});

    response.send({
        // data: categoryConstant.CATEGORY,
        message: "Data retrieved",
        status: 200,
        data: data,
    });
}

const getById = async (request, response) => {
  try{
    const data = await schema.findById(request.params.id);
    response.send({
        message: "Data retrieved",
        status: 200,
        data: data
    });
  }catch(e){
    response.status(404).send({
        message: 'Data not found',
        status: 404,
        data: null,
    });
  }
}

const create = async (request, response) => {
    // insert into table 
    const data = await schema.create({
        title: request.body.title
    });
    response.send({
        // data: request.body,
        message: 'Data created',
        status: 201
    });
}

const update = async (request, response) => {
    await schema.findByIdAndUpdate( request.params.id, {
        // title: request.body.title
        title: request.body.title
    })
    response.send({
        // params: request.params.id,
        // data: request.body,
        message: 'Data updated',
        status: 200
    });
}

const remove = async (request, response) => {
    await schema.findByIdAndDelete(request.params.id);
    response.send({
        // params: request.params.id,
        message: 'Data deleted',
        status: 200
    });
}

module.exports = {
    getAll,
    getById,
    create,
    update,
    remove
}