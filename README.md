# codesquadTest

메서드 이름은 wordPush, 전달인자로는 단어(word), 움직이는 칸 수 (Int), 방향(direction) 입니다.

[Int:String]의 dict타입으로 변수를 하나 만들어 key는 각 단어의 알파벳의 index 그리고 value는 각 단어의 알파벳을 넣어주었습니다.

우선 방향을 R과 L로 조건을 나누어 작성하였습니다.

R에는 각 character의 index값에 움직이는 칸수만큼 뺍니다( 여기서 뺀 값이 음수일 경우 단어의 카운트만큼 더해주어 양수를 유지해줍니다. 또 단어의 카운트보다 크지 않게 나누어 나머지 값이 결국 인덱스 값이 됩니다.)  이는 결국 wordDict 변수에 key는 완성될 단어의 인덱스, value에는 이 단어의 알파벳이 들어가게 됩니다.

L에는 R과 비슷하지만 방향이 다르므로 움직이는 칸수를 더해줍니다.

이렇게만 하고 나면 움직이는 칸 수 가 단어의 알파벳 개수와 같거나 배수일 경우 index배열에 에러가 나게 되는데 이를 방지하고자 
if number % wordArray.count == 0 {
	return wordArray.joined()
}
를 작성하여 넣어주었습니다.
