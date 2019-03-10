/*
Copyright 2019 happn

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

#ifndef HPNPreprocessorUtils_h
# define HPNPreprocessorUtils_h


/* Stringification */
# define _sharp(x) #x
# define S(x) _sharp(x)


/* Static assert */
# define STATIC_ASSERT(test, msg) typedef char _static_assert_##msg[((test)? 1: -1)]


#endif /* HPNPreprocessorUtils_h */
