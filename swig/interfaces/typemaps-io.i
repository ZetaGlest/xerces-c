/*
 * Copyright 2002,2004 The Apache Software Foundation.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 *  MemBufInputSource::MemBufInputSource()
 * 
 */

// %typemap(in,numinputs=0) (unsigned int byteCount) "$1 = 0;" 

/*
 * These arguments are used to indicate that Xerces-C should
 *    adopt a resource being passed as an argument. We should
 *    *always* tell Xerces-C to adopt.
 */
%typemap(in,numinputs=0) const bool adoptFlag "$1 = true;"   // for Wrapper4InputSource
                                                             // and Wrapper4DOMInputSource
%typemap(in,numinputs=0) const bool adoptBuffer "$1 = true;" // for MemBufInputSource
