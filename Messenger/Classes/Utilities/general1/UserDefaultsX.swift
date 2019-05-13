//
// Copyright (c) 2018 Related Code - http://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

//-------------------------------------------------------------------------------------------------------------------------------------------------
class UserDefaultsX: NSObject {

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func setObject(value: Any, key: String) {

		UserDefaults.standard.set(value, forKey: key)
		UserDefaults.standard.synchronize()
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func removeObject(key: String) {

		UserDefaults.standard.removeObject(forKey: key)
		UserDefaults.standard.synchronize()
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func removeObject(key: String, delay: TimeInterval) {

		DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
			removeObject(key: key)
		}
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func object(key: String) -> Any? {

		return UserDefaults.standard.object(forKey: key)
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func string(key: String) -> String? {

		return UserDefaults.standard.string(forKey: key)
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func integer(key: String) -> Int {

		return UserDefaults.standard.integer(forKey: key)
	}

	//---------------------------------------------------------------------------------------------------------------------------------------------
	class func bool(key: String) -> Bool {

		return UserDefaults.standard.bool(forKey: key)
	}
}
