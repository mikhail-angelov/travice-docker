describe('Protractor Demo App', function() {
  it('should have prop', function() {
    browser.get('http://localhost:7000');
    var test = element(by.id('test'));
    
    expect(test.getText()).toEqual('yo'); 
  });
});