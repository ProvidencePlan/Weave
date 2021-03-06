/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is the Weave API.
 *
 * The Initial Developer of the Original Code is the Institute for Visualization
 * and Perception Research at the University of Massachusetts Lowell.
 * Portions created by the Initial Developer are Copyright (C) 2008-2011
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

package weave.api.data
{
	import weave.api.primitives.IBounds2D;

	/**
	 * This is an interface to a geometry object defined by an array of vertices
	 * and a type.
	 * 
	 * @author kmonico
	 */
	public interface ISimpleGeometry
	{
		/**
		 * This function will return a boolean indicating if this
		 * geometry is a line.
		 * 
		 * @return <code>True</code> if this is a line.
		 */
		function isLine():Boolean;

		/**
		 * This function will return a boolean indicating if this
		 * geometry is a point.
		 * 
		 * @return <code>True</code> if this is a point.
		 */
		function isPoint():Boolean;
		
		/**
		 * This function will return a boolean indicating if this
		 * geometry is a polygon.
		 * 
		 * @return <code>True</code> if this is a polygon.
		 */
		function isPolygon():Boolean;
		
		/**
		 * Get the vertices.
		 */
		function getVertices():Array;
		
		/**
		 * Get the collective bounds for the bounding box of this simple geometry.
		 */
		function getBounds():IBounds2D;
	}
}