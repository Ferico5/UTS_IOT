const response = (statusCode, data, res) => {
  res.json(statusCode, data);
};

module.exports = response;
