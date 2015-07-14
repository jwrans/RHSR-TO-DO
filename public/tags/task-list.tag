<task-list>
  <h1>Your Tasks</h1>
  <ul><li each="{t in opts.items}">{t.task}</li></ul>
  <script>
    this.on('mount', function(){
      console.log('Riot mount event fired');
      opts.loadCallback(this);
    });

    this.on('data-loaded', function(data){
      opts.items = JSON.parse(data);
      this.update();
    });

    this.on('new-task', function(data){
      opts.items.push(data);
      this.update();
    })
  </script>
</task-list>