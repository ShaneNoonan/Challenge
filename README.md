<h2>Bugs Found</h2>
<ul>
  <li>Page meta title is spelt wrong i.e "Factoriall" should be spelt "Factorial"</li>
  <li>Also meta description is missing, maybe needed for SEO purposes</li>
  <li>Placeholder text should probably read "Enter a positive integer" as factorials cannot be calculated with negitive values</li>
  <li>Terms and conditions link and Privacy links are back the front :
Terms and conditions link goes to http://qainterview.pythonanywhere.com - privacy
Privacy link goes to http://qainterview.pythonanywhere.com/terms</li>
<li>Entering a negative integer results in a failed api resquest, frontend does not respond - text message does not update</li>
<li>Anything greater than 170 , calculator says infintity - This is probably not a bug but a consious decision as API does calculate a value up to 989</li>
<li>After value 989, api request fails with 500 error,  frontend does not respond - text message does not update </li>
</ul>

<h2>Autotests</h2>
Auotest test files are split out into Frontend and API Tests. Some tests fail due to bugs found (These are commented in the test files)

To run all tests in cmd: python -m robot --outputdir results Tests
Result files from last run can be found in Results folder
