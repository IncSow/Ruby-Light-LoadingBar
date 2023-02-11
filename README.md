# LoadingBar in ruby 

### How to use : 
require the file
call LoadingBar.output

Output takes two arguments : The current progression and the total progression.

If you have already calculated your completion rate (in %), you can simply print LoadingBar.output_string(completion_rate)


Exemple use : 

```ruby
start = 0
51.times do 
	print(LoadingBar.output(start, 50))
	sleep(0.1)
	start +=1
end
```


