/* 
* $Id: SDMolSupplier_doc.i 122 2011-01-18 07:22:46Z bill.smith $
*
*  Copyright (c) 2010, Novartis Institutes for BioMedical Research Inc.
*  All rights reserved.
* 
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are
* met: 
*
*     * Redistributions of source code must retain the above copyright 
*       notice, this list of conditions and the following disclaimer.
*     * Redistributions in binary form must reproduce the above
*       copyright notice, this list of conditions and the following 
*       disclaimer in the documentation and/or other materials provided 
*       with the distribution.
*     * Neither the name of Novartis Institutes for BioMedical Research Inc. 
*       nor the names of its contributors may be used to endorse or promote 
*       products derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
* "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
* LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
* A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
* OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
* THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
* (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

%typemap(javaimports) RDKit::SDMolSupplier "
/** A molecule supplier deriving its molecules from an SD file */"

%javamethodmodifiers RDKit::SDMolSupplier::SDMolSupplier 	( 	const std::string &  	fileName, 		bool  	sanitize = true, 		bool  	removeHs = true	  	) 			"
/**
<p>
<p>
@param
fileName 	- the name of the SD file
sanitize 	- if true sanitize the molecule before returning it
removeHs 	- if true remove Hs from the molecule before returning it (triggers sanitization)

*/
public";

%javamethodmodifiers RDKit::SDMolSupplier::getItemText 	( 	unsigned int  	idx 	 )  	"
/**
<p>
<p>
@return
the text block for a particular item
<p>
@param
idx 	- which item to return

*/
public";

%javamethodmodifiers RDKit::SDMolSupplier::setStreamIndices 	( 	const std::vector< std::streampos > &  	locs 	 )  	"
/**
<p>
Resets our internal state and sets the indices of molecules in the stream. The client should be *very* careful about calling this method, as it's trivial to end up with a completely useless supplier.
<p>
<p>
@param
locs 	- the vector of stream positions.
<p>
@notes

*/
public";
