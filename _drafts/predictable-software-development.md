---
layout: page
---
There are many aspects to software development that are unpredictable.

But there are three common very predictable problems that every developer will face.
Spending time improving these processes will make you team more productive.

* Can I safely make the changes I need to the code base.
  Usually making the change you need is easy and relatively quick. But to understand the impact the change has on other features,
  can take from seconds to days depending on the code base.

  * Scale days: Make a change, test it works. Deploy to the QA/tester to make sure it hasn't impacted any other features.
  * Scale hours: Make a change, check all usages and calls that the change may impacted.
  * Scale seconds: Make a change, run tests, any changes in functionality are highlighted by test failures.


* How can I safely deploy the changes to production.
  * Scale days/weeks/months: Executable binary is produced.
    Write up deployment pack. Schedule a meeting to review and release changes. Changes released.
  * Scale seconds: Button click deploy to production.


* "It works on my machine" - Troubleshoot issues in production.
  * When a problem occurs in production, it is usually quite difficult to identify. There are so many factors or a combination of factors that could be causing issues. The most obscure errors can be down to different versions from the development environment and production. Usually a UAT environment is set up to match production as close as possible. However errors due to scaling may not recreated in UAT as
