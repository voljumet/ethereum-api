/**
 *
 * PROVABLE_API
 *
 * Copyright (c) 2015-2016 Oraclize SRL
 * Copyright (c) 2016-2019 Oraclize LTD
 * Copyright (c) 2019 Provable Things Limited
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */
pragma solidity >= 0.5.0 < 0.6.0; // Incompatible compiler version - please select a compiler within the stated pragma range, or use a different version of the provableAPI!
/**
 *
 * @notice  The following is a dummy contract that is only used to emit a
 *          notification to the end-user they are using wrong solidity
 *          compiler version.
 *
 */
contract solcChecker {
/* INCOMPATIBLE SOLC: import the following instead: "github.com/provable-things/ethereum-api/oraclizeAPI_0.4.sol" */ function f(bytes calldata x) external;
}

contract ProvableI {

    address public cbAddress;
    mapping (bytes32 => uint256) public price;
    mapping (address => address) public addressCustomPaymentToken;

    function unsetCustomTokenPayment()
        external;

    function convertToERC20Price(
        uint256 _queryPriceInWei,
        address _tokenAddress
    )
        public
        view
        returns(uint256 _price);

    function queryCached()
        payable
        external
        returns (bytes32 _queryId);

    function randomDS_getSessionPubKeyHash()
        external
        view
        returns (bytes32 _sessionKeyHash);

    function setProofType(
        byte _proofType
    )
        external;

    function setCustomGasPrice(
        uint256 _gasPrice
    )
        external;

    function requestQueryCaching(
        bytes32 _queryId
    )
        external;

    function setCustomTokenPayment(
        address _tokenAddress
    )
        external;

    function getPrice(
        bytes1 _datasource
    )
        public
        view
        returns (uint256 _dsprice);

    function getPrice(
        string memory _datasource
    )
        public
        view
        returns (uint256 _dsprice);


    function getPrice(
        bytes1 _datasource,
        address _contractToQuery
    )
        public
        view
        returns (uint256 _dsprice);

    function getPrice(
        bytes1 _datasource,
        uint256 _gasLimit
    )
        public
        view
        returns (uint256 _dsprice);

    function getPrice(
        string memory _datasource,
        address _contractToQuery
    )
        public
        view
        returns (uint256 _dsprice);

    function getPrice(
        string memory _datasource,
        uint256 _gasLimit
    )
        public
        view
        returns (uint256 _dsprice);

    function requestCallbackRebroadcast(
        bytes32 _queryId,
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        payable
        external;

    function queryN(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes memory _argN
    )
        public
        payable
        returns (bytes32 _id);

    function getPrice(
        bytes1 _datasource,
        uint256 _gasLimit,
        address _contractToQuery
    )
        public
        view
        returns (uint256 _dsprice);

    function getRebroadcastCost(
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        public
        pure
        returns (uint256 _rebroadcastCost);

    function query(
        uint256 _timestamp,
        bytes1 _datasource,
        string calldata _arg
    )
        external
        payable
        returns (bytes32 _id);

    function queryN(
        uint256 _timestamp,
        string memory _datasource,
        bytes memory _argN
    )
        public
        payable
        returns (bytes32 _id);

    function getPrice(
        string memory _datasource,
        uint256 _gasLimit,
        address _contractToQuery
    )
        public
        view
        returns (uint256 _dsprice);

    function query(
        uint256 _timestamp,
        string calldata _datasource,
        string calldata _arg
    )
        external
        payable
        returns (bytes32 _id);

    function query2(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2
    )
        public
        payable
        returns (bytes32 _id);

    function query2(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg1,
        string memory _arg2
    )
        public
        payable
        returns (bytes32 _id);

    function query_withGasLimit(
        uint256 _timestamp,
        bytes1 _datasource,
        string calldata _arg,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);

    function queryN_withGasLimit(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes calldata _argN,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);

    function query_withGasLimit(
        uint256 _timestamp,
        string calldata _datasource,
        string calldata _arg,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);

    function queryN_withGasLimit(
        uint256 _timestamp,
        string calldata _datasource,
        bytes calldata _argN,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);

    function query2_withGasLimit(
        uint256 _timestamp,
        bytes1 _datasource,
        string calldata _arg1,
        string calldata _arg2,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);

    function query2_withGasLimit(
        uint256 _timestamp,
        string calldata _datasource,
        string calldata _arg1,
        string calldata _arg2,
        uint256 _gasLimit
    )
        external
        payable
        returns (bytes32 _id);
}

interface ERC20Interface {

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 tokens
    );

    event Approval(
        address indexed _tokenOwner,
        address indexed _spender,
        uint256 tokens
    );

    function totalSupply()
        external
        view
        returns (uint256);

    function transfer(
        address _to,
        uint256 _tokens
    )
        external
        returns (bool _success);

    function balanceOf(
        address _tokenOwner
    )
        external
        view
        returns (uint256 _balance);

    function approve(
        address _tokenSpender,
        uint256 _tokenAmount
    )
        external
        returns (bool);

    function transferFrom(
        address _from,
        address _to,
        uint256 _tokens
    )
        external
        returns (bool _success);

    function allowance(
        address _tokenOwner,
        address _spender
    )
        external
        view
        returns (uint256 _remaining);

}

contract OracleAddrResolverI {

    function getAddress() public returns (address _address);

}
/**
 *
 * Begin solidity-cborutils
 *
 * https://github.com/smartcontractkit/solidity-cborutils
 *
 * MIT License
 *
 * Copyright (c) 2018 SmartContract ChainLink, Ltd.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */
library Buffer {

    struct buffer {
        bytes buf;
        uint256 capacity;
    }

    function init(buffer memory _buf, uint256 _capacity) internal pure {
        uint256 capacity = _capacity;
        if (capacity % 32 != 0) {
            capacity += 32 - (capacity % 32);
        }
        _buf.capacity = capacity; // Allocate space for the buffer data
        assembly {
            let ptr := mload(0x40)
            mstore(_buf, ptr)
            mstore(ptr, 0)
            mstore(0x40, add(ptr, capacity))
        }
    }

    function resize(buffer memory _buf, uint256 _capacity) private pure {
        bytes memory oldbuf = _buf.buf;
        init(_buf, _capacity);
        append(_buf, oldbuf);
    }

    function max(uint256 _a, uint256 _b) private pure returns (uint256 _max) {
        if (_a > _b) {
            return _a;
        }
        return _b;
    }
    /**
     * @dev Appends a byte array to the end of the buffer. Resizes if doing so
     *      would exceed the capacity of the buffer.
     * @param _buf The buffer to append to.
     * @param _data The data to append.
     * @return The original buffer.
     *
     */
    function append(
        buffer memory _buf,
        bytes memory _data
    )
        internal
        pure
        returns (buffer memory _buffer)
    {
        if (_data.length + _buf.buf.length > _buf.capacity) {
            resize(_buf, max(_buf.capacity, _data.length) * 2);
        }
        uint256 dest;
        uint256 src;
        uint256 len = _data.length;
        assembly {
            let bufptr := mload(_buf) // Memory address of the buffer data
            let buflen := mload(bufptr) // Length of existing buffer data
            dest := add(add(bufptr, buflen), 32) // Start address = buffer address + buffer length + sizeof(buffer length)
            mstore(bufptr, add(buflen, mload(_data))) // Update buffer length
            src := add(_data, 32)
        }
        for(; len >= 32; len -= 32) { // Copy word-length chunks while possible
            assembly {
                mstore(dest, mload(src))
            }
            dest += 32;
            src += 32;
        }
        uint256 mask = 256 ** (32 - len) - 1; // Copy remaining bytes
        assembly {
            let srcpart := and(mload(src), not(mask))
            let destpart := and(mload(dest), mask)
            mstore(dest, or(destpart, srcpart))
        }
        return _buf;
    }
    /**
      *
      * @dev Appends a byte to the end of the buffer. Resizes if doing so would
      * exceed the capacity of the buffer.
      * @param _buf The buffer to append to.
      * @param _data The data to append.
      * @return The original buffer.
      *
      */
    function append(buffer memory _buf, uint8 _data) internal pure {
        if (_buf.buf.length + 1 > _buf.capacity) {
            resize(_buf, _buf.capacity * 2);
        }
        assembly {
            let bufptr := mload(_buf) // Memory address of the buffer data
            let buflen := mload(bufptr) // Length of existing buffer data
            let dest := add(add(bufptr, buflen), 32) // Address = buffer address + buffer length + sizeof(buffer length)
            mstore8(dest, _data)
            mstore(bufptr, add(buflen, 1)) // Update buffer length
        }
    }
    /**
      *
      * @dev Appends a byte to the end of the buffer. Resizes if doing so would
      * exceed the capacity of the buffer.
      * @param _buf The buffer to append to.
      * @param _data The data to append.
      * @return The original buffer.
      *
      */
    function appendInt(
        buffer memory _buf,
        uint256 _data,
        uint256 _len
    )
        internal
        pure
        returns (buffer memory _buffer)
    {
        if (_len + _buf.buf.length > _buf.capacity) {
            resize(_buf, max(_buf.capacity, _len) * 2);
        }
        uint256 mask = 256 ** _len - 1;
        assembly {
            let bufptr := mload(_buf) // Memory address of the buffer data
            let buflen := mload(bufptr) // Length of existing buffer data
            let dest := add(add(bufptr, buflen), _len) // Address = buffer address + buffer length + sizeof(buffer length) + len
            mstore(dest, or(and(mload(dest), not(mask)), _data))
            mstore(bufptr, add(buflen, _len)) // Update buffer length
        }
        return _buf;
    }
}

library CBOR {

    using Buffer for Buffer.buffer;

    uint8 private constant MAJOR_TYPE_INT = 0;
    uint8 private constant MAJOR_TYPE_MAP = 5;
    uint8 private constant MAJOR_TYPE_BYTES = 2;
    uint8 private constant MAJOR_TYPE_ARRAY = 4;
    uint8 private constant MAJOR_TYPE_STRING = 3;
    uint8 private constant MAJOR_TYPE_NEGATIVE_INT = 1;
    uint8 private constant MAJOR_TYPE_CONTENT_FREE = 7;

    function encodeType(
        Buffer.buffer memory _buf,
        uint8 _major,
        uint256 _value
    )
        private
        pure
    {
        if (_value <= 23) {
            _buf.append(uint8((_major << 5) | _value));
        } else if (_value <= 0xFF) {
            _buf.append(uint8((_major << 5) | 24));
            _buf.appendInt(_value, 1);
        } else if (_value <= 0xFFFF) {
            _buf.append(uint8((_major << 5) | 25));
            _buf.appendInt(_value, 2);
        } else if (_value <= 0xFFFFFFFF) {
            _buf.append(uint8((_major << 5) | 26));
            _buf.appendInt(_value, 4);
        } else if (_value <= 0xFFFFFFFFFFFFFFFF) {
            _buf.append(uint8((_major << 5) | 27));
            _buf.appendInt(_value, 8);
        }
    }

    function encodeIndefiniteLengthType(
        Buffer.buffer memory _buf,
        uint8 _major
    )
        private
        pure
    {
        _buf.append(uint8((_major << 5) | 31));
    }

    function encodeUInt(
        Buffer.buffer memory _buf,
        uint256 _value
    )
        internal
        pure
    {
        encodeType(_buf, MAJOR_TYPE_INT, _value);
    }

    function encodeInt(
        Buffer.buffer memory _buf,
        int _value
    )
        internal
        pure
    {
        if (_value >= 0) {
            encodeType(_buf, MAJOR_TYPE_INT, uint256(_value));
        } else {
            encodeType(_buf, MAJOR_TYPE_NEGATIVE_INT, uint256(-1 - _value));
        }
    }

    function encodeBytes(
        Buffer.buffer memory _buf,
        bytes memory _value
    )
        internal
        pure
    {
        encodeType(_buf, MAJOR_TYPE_BYTES, _value.length);
        _buf.append(_value);
    }

    function encodeString(
        Buffer.buffer memory _buf,
        string memory _value
    )
        internal
        pure
    {
        encodeType(_buf, MAJOR_TYPE_STRING, bytes(_value).length);
        _buf.append(bytes(_value));
    }

    function startArray(
        Buffer.buffer memory _buf
    )
        internal
        pure
    {
        encodeIndefiniteLengthType(_buf, MAJOR_TYPE_ARRAY);
    }

    function startMap(Buffer.buffer memory _buf)
        internal
        pure
    {
        encodeIndefiniteLengthType(_buf, MAJOR_TYPE_MAP);
    }

    function endSequence(Buffer.buffer memory _buf)
        internal
        pure
    {
        encodeIndefiniteLengthType(_buf, MAJOR_TYPE_CONTENT_FREE);
    }
}
/**
 *
 * End solidity-cborutils
 *
 */
contract usingProvable {

    using CBOR for Buffer.buffer;

    ProvableI provable;
    OracleAddrResolverI OAR;

    uint256 constant day = 60 * 60 * 24;
    uint256 constant week = 60 * 60 * 24 * 7;
    uint256 constant month = 60 * 60 * 24 * 30;

    byte constant proofType_NONE = 0x00;
    byte constant proofType_Ledger = 0x30;
    byte constant proofType_Native = 0xF0;
    byte constant proofStorage_IPFS = 0x01;
    byte constant proofType_Android = 0x40;
    byte constant proofType_TLSNotary = 0x10;

    string provable_network_name;
    uint8 constant networkID_auto = 0;
    uint8 constant networkID_morden = 2;
    uint8 constant networkID_mainnet = 1;
    uint8 constant networkID_testnet = 2;
    uint8 constant networkID_consensys = 161;

    mapping(bytes32 => bytes32) provable_randomDS_args;
    mapping(bytes32 => bool) provable_randomDS_sessionKeysHashVerified;

    modifier provableAPI {
        if ((address(OAR) == address(0)) || (getCodeSize(address(OAR)) == 0)) {
            provable_setNetwork(networkID_auto);
        }
        address provableConnector = OAR.getAddress();
        if (address(provable) != provableConnector) {
            provable = ProvableI(provableConnector);
        }

        _;
    }

    modifier provable_randomDS_proofVerify (
        bytes32 _queryId,
        string memory _result,
        bytes memory _proof
    )
    {
        // Note: RandomDS Proof Step 1: The prefix has to match 'LP\x01' (Ledger Proof version 1)
        require(
            (_proof[0] == "L") &&
            (_proof[1] == "P") &&
            (uint8(_proof[2]) == uint8(1))
        );
        bool proofVerified = provable_randomDS_proofVerify__main(
            _proof,
            _queryId,
            bytes(_result),
            provable_getNetworkName()
        );
        require(proofVerified);
        _;
    }

    function provable_setNetwork(
        uint8 _networkID
    )
        internal
        returns (bool _networkSet)
    {
      _networkID; // NOTE: Silence the warning and remain backwards compatible
      return provable_setNetwork();
    }

    function provable_setNetworkName(
        string memory _network_name
    )
        internal
    {
        provable_network_name = _network_name;
    }

    function provable_getNetworkName()
        internal
        view
        returns (string memory _networkName)
    {
        return provable_network_name;
    }

    function provable_setNetwork()
        internal
        returns (bool _networkSet)
    {
        // Note: Mainnet...
        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed) > 0) {
            OAR = OracleAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
            provable_setNetworkName("eth_mainnet");
            return true;
        }
        // Note: Ropsten testnet...
        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1) > 0) {
            OAR = OracleAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
            provable_setNetworkName("eth_ropsten3");
            return true;
        }
        // Note: Kovan testnet...
        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e) > 0) {
            OAR = OracleAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
            provable_setNetworkName("eth_kovan");
            return true;
        }
        // Note: Rinkeby testnet...
        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48) > 0) {
            OAR = OracleAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
            provable_setNetworkName("eth_rinkeby");
            return true;
        }
        // Note: Goerli testnet...
        if (getCodeSize(0xa2998EFD205FB9D4B4963aFb70778D6354ad3A41) > 0) {
            OAR = OracleAddrResolverI(0xa2998EFD205FB9D4B4963aFb70778D6354ad3A41);
            provable_setNetworkName("eth_goerli");
            return true;
        }
        // Note: Ethereum-bridge testnet...
        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475) > 0) {
            OAR = OracleAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
            return true;
        }
        // Note: Ether.camp ide...
        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF) > 0) {
            OAR = OracleAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
            return true;
        }
        // Note: Browser-solidity...
        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA) > 0) {
            OAR = OracleAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
            return true;
        }
        return false;
    }
    /**
     * @dev The following `__callback` functions are just placeholders ideally
     *      meant to be defined in child contract when proofs are used.
     *      The function bodies simply silence compiler warnings.
     */
    function __callback(
        bytes32 _myid,
        string memory _result
    )
        public
    {
        __callback(_myid, _result, new bytes(0));
    }

    function __callback(
        bytes32 _myid,
        string memory _result,
        bytes memory _proof
    )
        public
    {
        _myid; _result; _proof;
        provable_randomDS_args[bytes32(0)] = bytes32(0);
    }
    /**
     *
     * @notice provable_getPrice(...) overloads follow...
     *
     */
    function provable_getPrice(
        string memory _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource);
    }

    function provable_getPrice(
        byte _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource);
    }

    function provable_getPrice(
        string memory _datasource,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _gasLimit);
    }

    function provable_getPrice(
        byte _datasource,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _gasLimit);
    }

    function provable_getPrice(
        string memory _datasource,
        address _contractToQuery
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _contractToQuery);
    }

    function provable_getPrice(
        byte _datasource,
        address _contractToQuery
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _contractToQuery);
    }

    function provable_getPrice(
        string memory _datasource,
        address _contractToQuery,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _gasLimit, _contractToQuery);
    }

    function provable_getPrice(
        byte _datasource,
        address _contractToQuery,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.getPrice(_datasource, _gasLimit, _contractToQuery);
    }

    function provable_getPrice(
        byte _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return _queryPrice += _gasLimit * _gasPrice;
    }

    function provable_getPrice(
        byte _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return _queryPrice += _gasLimit * _gasPrice;
    }

    function provable_getPrice(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return _queryPrice += _gasLimit * _gasPrice;
    }

    function provable_getPrice(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return _queryPrice += _gasLimit * _gasPrice;
    }
    /**
     *
     * @notice provable_getPriceERC20(...) overloads follow...
     *
     */
    function provable_getPriceERC20(
        string memory _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        byte _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        address _tokenAddress,
        string memory _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        address _tokenAddress,
        byte _datasource
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        uint256 _gasLimit,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        address _contractToQuery
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _contractToQuery),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        address _contractToQuery
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _contractToQuery),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        address _contractToQuery,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _contractToQuery),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        address _contractToQuery,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _contractToQuery),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        address _contractToQuery,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit, _contractToQuery),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        address _contractToQuery,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit, _contractToQuery),
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        address _contractToQuery,
        uint256 _gasLimit,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit, _contractToQuery),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        address _contractToQuery,
        uint256 _gasLimit,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        return provable.convertToERC20Price(
            provable.getPrice(_datasource, _gasLimit, _contractToQuery),
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        byte _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    proofType_NONE
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            provable.addressCustomPaymentToken(address(this))
        );
    }

    function provable_getPriceERC20(
        string memory _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            _tokenAddress
        );
    }

    function provable_getPriceERC20(
        bytes1 _datasource,
        uint256 _gasLimit,
        uint256 _gasPrice,
        byte _proofType,
        address _tokenAddress
    )
        provableAPI
        internal
        returns (uint256 _queryPrice)
    {
        _queryPrice = provable.price(
            keccak256(
                abi.encodePacked(
                    _datasource,
                    _proofType
                )
            )
        );
        return provable.convertToERC20Price(
            _queryPrice + _gasLimit * _gasPrice,
            _tokenAddress
        );
    }
    /**
     *
     * @notice `provable_query` overloads using STRING type datasource follow...
     *
     */
    function provable_query(
        string memory _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,string,string)",
                0,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,bytes1,string)",
                0,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,string,string)",
                _timestamp,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,bytes1,string)",
                _timestamp,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource,_gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource,_gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,bytes1,string,uint256)",
                _timestamp,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
           return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,string,string,uint256)",
                0,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
           return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query(uint256,bytes1,string,uint256)",
                0,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2(uint256,string,string,string)",
                0,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2(uint256,bytes1,string,string)",
                0,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2(uint256,string,string,string)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2(uint256,bytes1,string,string)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,string,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,bytes1,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,string,string,string,uint256)",
                0,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,bytes1,string,string,uint256)",
                0,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        string memory _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_query(
        bytes1 _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call.value(price)(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }
    /**
     *
     * @notice  `provable_query` overloads using dynamic string[] arguments and
     *          a datasource of type STRING follow...
     *
     */
    function provable_query(
        string memory _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_query` overloads using dynamic byte[] arguments and a
     *          datasource of type STRING follow...
     *
     */
    function provable_query(
        string memory _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        string memory _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_query` overloads using dynamic string[] arguments and
     *          a datasource of type BYTES1 follow...
     *
     */
    function provable_query(
        bytes1 _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_query` overloads using dynamic byte[] arguments and a
     *          datasource of type BYTES1 follow...
     *
     */
    function provable_query(
        bytes1 _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_query(_datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs);
    }

    function provable_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_query(
        bytes1 _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_query` overloads end.
     *
     * @notice  `provable_token_query` overloads using STRING datasource follow...
     *
     */
    function provable_token_query(
        string memory _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,string,string)",
                0,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,bytes1,string)",
                0,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,string,string)",
                _timestamp,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,bytes1,string)",
                _timestamp,
                _datasource,
                _arg
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource,_gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource,_gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,bytes1,string,uint256)",
                _timestamp,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
           return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,string,string,uint256)",
                0,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string memory _arg,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
           return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query(uint256,bytes1,string,uint256)",
                0,
                _datasource,
                _arg,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2(uint256,string,string,string)",
                0,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2(uint256,bytes1,string,string)",
                0,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2(uint256,string,string,string)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2(uint256,bytes1,string,string)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,string,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,bytes1,string,string,uint256)",
                _timestamp,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,string,string,string,uint256)",
                0,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string memory _arg1,
        string memory _arg2,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "query2_withGasLimit(uint256,bytes1,string,string,uint256)",
                0,
                _datasource,
                _arg1,
                _arg2,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        string[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = stra2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                0,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,string,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[] memory _argN
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource);
        if (price > 1 ether + tx.gasprice * 200000) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN(uint256,bytes1,bytes)",
                _timestamp,
                _datasource,
                args
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                _timestamp,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        string memory _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,string,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[] memory _argN,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        uint256 price = provable.getPrice(_datasource, _gasLimit);
        if (price > 1 ether + tx.gasprice * _gasLimit) {
            return 0; // Note: Return 0 due to unexpectedly high price
        }
        bytes memory args = ba2cbor(_argN);
        (bool success, bytes memory returnData) = address(provable)
            .call(abi.encodeWithSignature(
                "queryN_withGasLimit(uint256,bytes1,bytes,uint256)",
                0,
                _datasource,
                args,
                _gasLimit
            )
        );
        require(success);
        bytes32 returnValue;
        assembly { returnValue := mload(add(returnData, 0x20)) }
        return returnValue;
    }
    /**
     *
     * @notice  `provable_token_query` overloads using dynamic string[]
     *          arguments and a datasource of type string follow...
     *
     */
    function provable_token_query(
        string memory _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_token_query` overloads using dynamic byte[]
     *          arguments and a datasource of type string follow...
     *
     */
    function provable_token_query(
        string memory _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        string memory _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        string memory _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_token_query` overloads using dynamic string[]
     *          arguments and a datasource of type bytes1 follow...
     *
     */
    function provable_token_query(
        bytes1 _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        string[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        string[] memory dynargs = new string[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice  `provable_token_query` overloads using dynamic byte[] arguments
     *          and a datasource of type bytes1 follow...
     *
     */
    function provable_token_query(
        bytes1 _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[1] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[1] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](1);
        dynargs[0] = _args[0];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[2] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[2] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](2);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[3] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[3] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](3);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[4] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[4] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](4);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        return provable_token_query(_datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[5] memory _args
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs);
    }

    function provable_token_query(
        uint256 _timestamp,
        bytes1 _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_token_query(_timestamp, _datasource, dynargs, _gasLimit);
    }

    function provable_token_query(
        bytes1 _datasource,
        bytes[5] memory _args,
        uint256 _gasLimit
    )
        provableAPI
        internal
        returns (bytes32 _id)
    {
        bytes[] memory dynargs = new bytes[](5);
        dynargs[0] = _args[0];
        dynargs[1] = _args[1];
        dynargs[2] = _args[2];
        dynargs[3] = _args[3];
        dynargs[4] = _args[4];
        return provable_query(_datasource, dynargs, _gasLimit);
    }
    /**
     *
     * @notice `provable_token_query` overloads end.
     *
     */
    function provable_setProof(byte _proofP)
        provableAPI
        internal
    {
        return provable.setProofType(_proofP);
    }


    function provable_cbAddress()
        provableAPI
        internal
        returns (address _callbackAddress)
    {
        return provable.cbAddress();
    }

    function getCodeSize(address _addr)
        internal
        view
        returns (uint256 _size)
    {
        assembly {
            _size := extcodesize(_addr)
        }
    }

    function provable_setCustomGasPrice(uint256 _gasPrice)
        provableAPI
        internal
    {
        return provable.setCustomGasPrice(_gasPrice);
    }

    function provable_randomDS_getSessionPubKeyHash()
        provableAPI
        internal
        returns (bytes32 _sessionKeyHash)
    {
        return provable.randomDS_getSessionPubKeyHash();
    }

    function provable_requestQueryCaching(bytes32 _queryId)
        provableAPI
        internal
    {
        return provable.requestQueryCaching(_queryId);
    }

    function provable_queryCached(uint256 _queryPrice)
        provableAPI
        internal
        returns (bytes32 _queryId)
    {
        return provable.queryCached.value(_queryPrice)();
    }

    function provable_getDatasourceByte(
        string memory _datasourceString
    )
        internal
        pure
        returns (byte _datasourceByte)
    {
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('URL'))
            return 0xFF;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('Random'))
            return 0xFE;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('computation'))
            return 0xFD;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('WolframAlpha'))
            return 0xFC;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('IPFS'))
            return 0xFB;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('nested'))
            return 0xFA;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('Blockchain'))
            return 0xF9;
        if (keccak256(abi.encodePacked(_datasourceString)) == keccak256('swarm'))
            return 0xF8;
        return 0x00;
    }

    function provable_getRebroadcastCost(
        uint256 _gasLimit,
        uint256 _gasPrice
    )
        provableAPI
        internal
        returns(uint256 _rebroadcastCost)
    {
        return provable.getRebroadcastCost(_gasLimit, _gasPrice);
    }

    function provable_requestCallbackRebroadcast(
        bytes32 _queryId,
        uint256 _gasLimit,
        uint256 _gasPrice,
        uint256 _queryPrice
    )
        provableAPI
        internal
    {
        return provable
            .requestCallbackRebroadcast
            .value(_queryPrice)
            (
                _queryId,
                _gasLimit,
                _gasPrice
            );
    }

    function provable_setCustomTokenPayment(address _tokenAddress)
        provableAPI
        internal
    {
        return provable.setCustomTokenPayment(_tokenAddress);
    }

    function provable_approveTokenAllowance(
        address _tokenAddress,
        uint256 _tokenAmount
    )
        provableAPI
        internal
    {
        ERC20Interface(_tokenAddress)
            .approve(address(provable), _tokenAmount);
    }

    function provable_setAndApproveCustomTokenPayment(
        address _tokenAddress,
        uint256 _tokenAmount
    )
       provableAPI
       internal
    {
        provable_setCustomTokenPayment(_tokenAddress);
        provable_approveTokenAllowance(_tokenAddress, _tokenAmount);
    }

    function provable_unsetAndRevokeCustomTokenPayment(address _tokenAddress)
        provableAPI
        internal
    {
        provable_unsetCustomTokenPayment();
        provable_approveTokenAllowance(_tokenAddress, 0);
    }

    function provable_unsetCustomTokenPayment()
        provableAPI
        internal
    {
        return provable.unsetCustomTokenPayment();
    }
    /**
     *
     * @notice Provable helper functions follow...
     *
     */
    function parseAddr(string memory _a)
        internal
        pure
        returns (address _parsedAddress)
    {
        bytes memory tmp = bytes(_a);
        uint160 iaddr = 0;
        uint160 b1;
        uint160 b2;
        for (uint256 i = 2; i < 2 + 2 * 20; i += 2) {
            iaddr *= 256;
            b1 = uint160(uint8(tmp[i]));
            b2 = uint160(uint8(tmp[i + 1]));
            if ((b1 >= 97) && (b1 <= 102)) {
                b1 -= 87;
            } else if ((b1 >= 65) && (b1 <= 70)) {
                b1 -= 55;
            } else if ((b1 >= 48) && (b1 <= 57)) {
                b1 -= 48;
            }
            if ((b2 >= 97) && (b2 <= 102)) {
                b2 -= 87;
            } else if ((b2 >= 65) && (b2 <= 70)) {
                b2 -= 55;
            } else if ((b2 >= 48) && (b2 <= 57)) {
                b2 -= 48;
            }
            iaddr += (b1 * 16 + b2);
        }
        return address(iaddr);
    }

    function strCompare(
        string memory _a,
        string memory _b
    )
        internal
        pure
        returns (int _returnCode)
    {
        bytes memory a = bytes(_a);
        bytes memory b = bytes(_b);
        uint256 minLength = a.length;
        if (b.length < minLength) {
            minLength = b.length;
        }
        for (uint256 i = 0; i < minLength; i ++) {
            if (a[i] < b[i]) {
                return -1;
            } else if (a[i] > b[i]) {
                return 1;
            }
        }
        if (a.length < b.length) {
            return -1;
        } else if (a.length > b.length) {
            return 1;
        } else {
            return 0;
        }
    }

    function indexOf(
        string memory _haystack,
        string memory _needle
    )
        internal
        pure
        returns (int _returnCode)
    {
        bytes memory h = bytes(_haystack);
        bytes memory n = bytes(_needle);
        if (h.length < 1 || n.length < 1 || (n.length > h.length)) {
            return -1;
        } else if (h.length > (2 ** 128 - 1)) {
            return -1;
        } else {
            uint256 subindex = 0;
            for (uint256 i = 0; i < h.length; i++) {
                if (h[i] == n[0]) {
                    subindex = 1;
                    while(
                        subindex < n.length &&
                        (i + subindex) < h.length &&
                        h[i + subindex] == n[subindex]
                    ) {
                        subindex++;
                    }
                    if (subindex == n.length) {
                        return int(i);
                    }
                }
            }
            return -1;
        }
    }

    function strConcat(
        string memory _a,
        string memory _b
    )
        internal
        pure
        returns (string memory _concatenatedString)
    {
        return strConcat(_a, _b, "", "", "");
    }

    function strConcat(
        string memory _a,
        string memory _b,
        string memory _c
    )
        internal
        pure
        returns (string memory _concatenatedString)
    {
        return strConcat(_a, _b, _c, "", "");
    }

    function strConcat(
        string memory _a,
        string memory _b,
        string memory _c,
        string memory _d
    )
        internal
        pure
        returns (string memory _concatenatedString)
    {
        return strConcat(_a, _b, _c, _d, "");
    }

    function strConcat(
        string memory _a,
        string memory _b,
        string memory _c,
        string memory _d,
        string memory _e
    )
        internal
        pure
        returns (string memory _concatenatedString)
    {
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory _bc = bytes(_c);
        bytes memory _bd = bytes(_d);
        bytes memory _be = bytes(_e);
        string memory abcde = new string(
            _ba.length +
            _bb.length +
            _bc.length +
            _bd.length +
            _be.length
        );
        bytes memory babcde = bytes(abcde);
        uint256 k = 0;
        uint256 i = 0;
        for (i = 0; i < _ba.length; i++) {
            babcde[k++] = _ba[i];
        }
        for (i = 0; i < _bb.length; i++) {
            babcde[k++] = _bb[i];
        }
        for (i = 0; i < _bc.length; i++) {
            babcde[k++] = _bc[i];
        }
        for (i = 0; i < _bd.length; i++) {
            babcde[k++] = _bd[i];
        }
        for (i = 0; i < _be.length; i++) {
            babcde[k++] = _be[i];
        }
        return string(babcde);
    }

    function safeParseInt(string memory _a)
        internal
        pure
        returns (uint256 _parsedInt)
    {
        return safeParseInt(_a, 0);
    }

    function safeParseInt(
        string memory _a,
        uint256 _b
    )
        internal
        pure
        returns (uint256 _parsedInt)
    {
        bytes memory bresult = bytes(_a);
        uint256 mint = 0;
        bool decimals = false;
        for (uint256 i = 0; i < bresult.length; i++) {
            if (
                (uint256(uint8(bresult[i])) >= 48) &&
                (uint256(uint8(bresult[i])) <= 57)
            ) {
                if (decimals) {
                   if (_b == 0) break;
                    else _b--;
                }
                mint *= 10;
                mint += uint256(uint8(bresult[i])) - 48;
            } else if (uint256(uint8(bresult[i])) == 46) {
                require(
                    !decimals,
                    'More than one decimal encountered in string!'
                );
                decimals = true;
            } else {
                revert("Non-numeral character encountered in string!");
            }
        }
        if (_b > 0) {
            mint *= 10 ** _b;
        }
        return mint;
    }

    function parseInt(string memory _a)
        internal
        pure
        returns (uint256 _parsedInt)
    {
        return parseInt(_a, 0);
    }

    function parseInt(
        string memory _a,
        uint256 _b
    )
        internal
        pure
        returns (uint256 _parsedInt)
    {
        bytes memory bresult = bytes(_a);
        uint256 mint = 0;
        bool decimals = false;
        for (uint256 i = 0; i < bresult.length; i++) {
            if (
                (uint256(uint8(bresult[i])) >= 48) &&
                (uint256(uint8(bresult[i])) <= 57)
            ) {
                if (decimals) {
                   if (_b == 0) {
                       break;
                   } else {
                       _b--;
                   }
                }
                mint *= 10;
                mint += uint256(uint8(bresult[i])) - 48;
            } else if (uint256(uint8(bresult[i])) == 46) {
                decimals = true;
            }
        }
        if (_b > 0) {
            mint *= 10 ** _b;
        }
        return mint;
    }

    function uint2str(uint256 _i)
        internal
        pure
        returns (string memory _uintAsString)
    {
        if (_i == 0) {
            return "0";
        }
        uint256 j = _i;
        uint256 len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint256 k = len - 1;
        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }

    function stra2cbor(string[] memory _arr)
        internal
        pure
        returns (bytes memory _cborEncoding)
    {
        safeMemoryCleaner();
        Buffer.buffer memory buf;
        Buffer.init(buf, 1024);
        buf.startArray();
        for (uint256 i = 0; i < _arr.length; i++) {
            buf.encodeString(_arr[i]);
        }
        buf.endSequence();
        return buf.buf;
    }

    function ba2cbor(bytes[] memory _arr)
        internal
        pure
        returns (bytes memory _cborEncoding)
    {
        safeMemoryCleaner();
        Buffer.buffer memory buf;
        Buffer.init(buf, 1024);
        buf.startArray();
        for (uint256 i = 0; i < _arr.length; i++) {
            buf.encodeBytes(_arr[i]);
        }
        buf.endSequence();
        return buf.buf;
    }
    /**
     *
     * Provable RandomDS Functions
     *
     */
    function provable_newRandomDSQuery(
        uint256 _delay,
        uint256 _nbytes,
        uint256 _customGasLimit
    )
        internal
        returns (bytes32 _queryId)
    {
        require((_nbytes > 0) && (_nbytes <= 32));
        _delay *= 10; // Note: Convert from seconds to ledger timer ticks
        bytes memory nbytes = new bytes(1);
        nbytes[0] = byte(uint8(_nbytes));
        bytes memory unonce = new bytes(32);
        bytes memory sessionKeyHash = new bytes(32);
        bytes32 sessionKeyHash_bytes32 = provable_randomDS_getSessionPubKeyHash();
        assembly {
            mstore(unonce, 0x20)
            /**
             *
             * The following variables can be relaxed.
             * Check the relaxed random contract at https://github.com/provable-things/ethereum-examples
             * for an idea on how to override and replace commit hash variables.
             *
             */
            mstore(add(unonce, 0x20), xor(blockhash(sub(number, 1)), xor(coinbase, timestamp)))
            mstore(sessionKeyHash, 0x20)
            mstore(add(sessionKeyHash, 0x20), sessionKeyHash_bytes32)
        }
        bytes memory delay = new bytes(32);
        assembly {
            mstore(add(delay, 0x20), _delay)
        }
        bytes memory delay_bytes8 = new bytes(8);
        copyBytes(delay, 24, 8, delay_bytes8, 0);
        bytes[4] memory args = [unonce, nbytes, sessionKeyHash, delay];
        bytes32 queryId = provable_query("random", args, _customGasLimit);
        bytes memory delay_bytes8_left = new bytes(8);
        assembly {
            let x := mload(add(delay_bytes8, 0x20))
            mstore8(
                add(delay_bytes8_left, 0x27),
                div(x, 0x100000000000000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x26),
                div(x, 0x1000000000000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x25),
                div(x, 0x10000000000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x24),
                div(x, 0x100000000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x23),
                div(x, 0x1000000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x22),
                div(x, 0x10000000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x21),
                div(x, 0x100000000000000000000000000000000000000000000000000)
            )
            mstore8(
                add(delay_bytes8_left, 0x20),
                div(x, 0x1000000000000000000000000000000000000000000000000)
            )
        }
        provable_randomDS_setCommitment(
            queryId,
            keccak256(
                abi.encodePacked(
                    delay_bytes8_left,
                    args[1],
                    sha256(args[0]),
                    args[2]
                )
            )
        );
        return queryId;
    }

    function provable_randomDS_setCommitment(
        bytes32 _queryId,
        bytes32 _commitment
    )
        internal
    {
        provable_randomDS_args[_queryId] = _commitment;
    }

    function verifySig(
        bytes32 _tosignh,
        bytes memory _dersig,
        bytes memory _pubkey
    )
        internal
        returns (bool _sigVerified)
    {
        bool sigok;
        address signer;
        bytes32 sigr;
        bytes32 sigs;
        bytes memory sigr_ = new bytes(32);
        uint256 offset = 4 + (uint256(uint8(_dersig[3])) - 0x20);
        sigr_ = copyBytes(_dersig, offset, 32, sigr_, 0);
        bytes memory sigs_ = new bytes(32);
        offset += 32 + 2;
        sigs_ = copyBytes(
            _dersig,
            offset + (uint256(uint8(_dersig[offset - 1])) - 0x20),
            32,
            sigs_,
            0
        );
        assembly {
            sigr := mload(add(sigr_, 32))
            sigs := mload(add(sigs_, 32))
        }
        (sigok, signer) = safer_ecrecover(_tosignh, 27, sigr, sigs);
        if (address(uint160(uint256(keccak256(_pubkey)))) == signer) {
            return true;
        } else {
            (sigok, signer) = safer_ecrecover(_tosignh, 28, sigr, sigs);
            return (address(uint160(uint256(keccak256(_pubkey)))) == signer);
        }
    }

    function provable_randomDS_proofVerify__sessionKeyValidity(
        bytes memory _proof,
        uint256 _sig2offset
    )
        internal
        returns (bool _proofVerified)
    {
        bool sigok;
        /**
         *
         * Note - Random DS Proof Step 6:
         * Verify the attestation signature, APPKEY1 must sign the sessionKey
         * from the correct ledger app (CODEHASH)
         *
         */
        bytes memory sig2 = new bytes(uint256(uint8(_proof[_sig2offset + 1])) + 2);
        copyBytes(_proof, _sig2offset, sig2.length, sig2, 0);
        bytes memory appkey1_pubkey = new bytes(64);
        copyBytes(_proof, 3 + 1, 64, appkey1_pubkey, 0);
        bytes memory tosign2 = new bytes(1 + 65 + 32);
        tosign2[0] = byte(uint8(1)); //role
        copyBytes(_proof, _sig2offset - 65, 65, tosign2, 1);
        bytes memory CODEHASH = hex"fd94fa71bc0ba10d39d464d0d8f465efeef0a2764e3887fcc9df41ded20f505c";
        copyBytes(CODEHASH, 0, 32, tosign2, 1 + 65);
        sigok = verifySig(sha256(tosign2), sig2, appkey1_pubkey);
        if (!sigok) {
            return false;
        }
        /**
         *
         * Note - Random DS Proof Step 7:
         * Verify the APPKEY1 provenance (must be signed by Ledger)
         *
         */
        bytes memory LEDGERKEY = hex"7fb956469c5c9b89840d55b43537e66a98dd4811ea0a27224272c2e5622911e8537a2f8e86a46baec82864e98dd01e9ccc2f8bc5dfc9cbe5a91a290498dd96e4";
        bytes memory tosign3 = new bytes(1 + 65);
        tosign3[0] = 0xFE;
        copyBytes(_proof, 3, 65, tosign3, 1);
        bytes memory sig3 = new bytes(uint256(uint8(_proof[3 + 65 + 1])) + 2);
        copyBytes(_proof, 3 + 65, sig3.length, sig3, 0);
        sigok = verifySig(sha256(tosign3), sig3, LEDGERKEY);
        return sigok;
    }

    function provable_randomDS_proofVerify__returnCode(
        bytes32 _queryId,
        string memory _result,
        bytes memory _proof
    )
        internal
        returns (uint8 _returnCode)
    {
        /**
         *
         * Note - Random DS Proof Step 1:
         * The prefix has to match 'LP\x01' (Ledger Proof version 1)
         *
         */
        if (
            (_proof[0] != "L") ||
            (_proof[1] != "P") ||
            (uint8(_proof[2]) != uint8(1))
        ) {
            return 1;
        }
        bool proofVerified = provable_randomDS_proofVerify__main(
            _proof,
            _queryId,
            bytes(_result),
            provable_getNetworkName()
        );
        if (!proofVerified) {
            return 2;
        }
        return 0;
    }

    function matchBytes32Prefix(
        bytes32 _content,
        bytes memory _prefix,
        uint256 _nRandomBytes
    )
        internal
        pure
        returns (bool _matchesPrefix)
    {
        bool match_ = true;
        require(_prefix.length == _nRandomBytes);
        for (uint256 i = 0; i < _nRandomBytes; i++) {
            if (_content[i] != _prefix[i]) {
                match_ = false;
            }
        }
        return match_;
    }

    function provable_randomDS_proofVerify__main(
        bytes memory _proof,
        bytes32 _queryId,
        bytes memory _result,
        string memory _contextName
    )
        internal
        returns (bool _proofVerified)
    {
        /**
         *
         * Note - Random DS Proof Step 2:
         * The unique keyhash has to match with the sha256 of:
         * (context name + _queryId)
         *
         */
        uint256 ledgerProofLength = 3 + 65 + (uint256(uint8(_proof[3 + 65 + 1])) + 2) + 32;
        bytes memory keyhash = new bytes(32);
        copyBytes(_proof, ledgerProofLength, 32, keyhash, 0);
        if (!(keccak256(keyhash) == keccak256(abi.encodePacked(sha256(abi.encodePacked(_contextName, _queryId)))))) {
            return false;
        }
        bytes memory sig1 = new bytes(uint256(uint8(_proof[ledgerProofLength + (32 + 8 + 1 + 32) + 1])) + 2);
        copyBytes(_proof, ledgerProofLength + (32 + 8 + 1 + 32), sig1.length, sig1, 0);
        /**
         *
         * Note - Random DS Proof Step 3:
         * We assume sig1 is valid (it will be verified during step 5) and we
         * verify if '_result' is the _prefix of sha256(sig1)
         *
         */
        if (!matchBytes32Prefix(sha256(sig1), _result, uint256(uint8(_proof[ledgerProofLength + 32 + 8])))) {
            return false;
        }
        /**
         *
         * Note - Random DS Proof Step 4:
         * Commitment match verifying that
         *
         *  keccak256(
         *      delay,
         *      nbytes,
         *      unonce,
         *      sessionKeyHash
         *  ) == commitment in storage.
         *
         * This is to verify that the computed args match with the ones
         * specified in the query.
         *
         */
        bytes memory commitmentSlice1 = new bytes(8 + 1 + 32);
        copyBytes(_proof, ledgerProofLength + 32, 8 + 1 + 32, commitmentSlice1, 0);
        bytes memory sessionPubkey = new bytes(64);
        uint256 sig2offset = ledgerProofLength + 32 + (8 + 1 + 32) + sig1.length + 65;
        copyBytes(_proof, sig2offset - 64, 64, sessionPubkey, 0);
        bytes32 sessionPubkeyHash = sha256(sessionPubkey);
        if (provable_randomDS_args[_queryId] == keccak256(abi.encodePacked(commitmentSlice1, sessionPubkeyHash))) { //unonce, nbytes and sessionKeyHash match
            delete provable_randomDS_args[_queryId];
        } else return false;
        /**
         *
         * Note - Random DS Proof Step 5:
         * Validity verification for sig1 (keyhash and args signed with the
         * sessionKey)
         *
         */
        bytes memory tosign1 = new bytes(32 + 8 + 1 + 32);
        copyBytes(_proof, ledgerProofLength, 32 + 8 + 1 + 32, tosign1, 0);
        if (!verifySig(sha256(tosign1), sig1, sessionPubkey)) {
            return false;
        }
        /**
         *
         * Note: Verify if sessionPubkeyHash was verified already, if not...
         * let's do it!
         *
         */
        if (!provable_randomDS_sessionKeysHashVerified[sessionPubkeyHash]) {
            provable_randomDS_sessionKeysHashVerified[sessionPubkeyHash] = provable_randomDS_proofVerify__sessionKeyValidity(_proof, sig2offset);
        }
        return provable_randomDS_sessionKeysHashVerified[sessionPubkeyHash];
    }
    /**
     *
     * The following function has been written by Alex Beregszaszi (axic)
     * Use it under the terms of the MIT license
     *
     */
    function copyBytes(
        bytes memory _from,
        uint256 _fromOffset,
        uint256 _length,
        bytes memory _to,
        uint256 _toOffset
    )
        internal
        pure
        returns (bytes memory _copiedBytes)
    {
        uint256 minLength = _length + _toOffset;
        require(_to.length >= minLength); // Note: Buffer too small. Should be a better way?
        uint256 i = 32 + _fromOffset; // Note: the offset 32 is added to skip the `size` field of both bytes variables
        uint256 j = 32 + _toOffset;
        while (i < (32 + _fromOffset + _length)) {
            assembly {
                let tmp := mload(add(_from, i))
                mstore(add(_to, j), tmp)
            }
            i += 32;
            j += 32;
        }
        return _to;
    }
    /**
     *
     * The following function has been written by Alex Beregszaszi (axic)
     * Use it under the terms of the MIT license
     * It duplicates Solidity's ecrecover, but catching the CALL return value
     *
     */
    function safer_ecrecover(
        bytes32 _hash,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    )
        internal
        returns (bool _success, address _recoveredAddress)
    {
        /**
         *
         * We do our own memory management here. Solidity uses memory offset
         * 0x40 to store the current end of memory. We write past it (as
         * writes are memory extensions), but don't update the offset so
         * Solidity will reuse it. The memory used here is only needed for
         * this context.
         * FIXME: inline assembly can't access return values
         *
         */
        bool ret;
        address addr;
        assembly {
            let size := mload(0x40)
            mstore(size, _hash)
            mstore(add(size, 32), _v)
            mstore(add(size, 64), _r)
            mstore(add(size, 96), _s)
            ret := call(3000, 1, 0, size, 128, size, 32) // NOTE: we can reuse the request memory because we deal with the return code.
            addr := mload(size)
        }
        return (ret, addr);
    }
    /**
     *
     * The following function has been written by Alex Beregszaszi (axic)
     * Use it under the terms of the MIT license
     *
     */
    function ecrecovery(
        bytes32 _hash,
        bytes memory _sig
    )
        internal
        returns (bool _success, address _recoveredAddress)
    {
        bytes32 r;
        bytes32 s;
        uint8 v;
        if (_sig.length != 65) {
            return (false, address(0));
        }
        /**
         *
         * The signature format is a compact form of:
         * {bytes32 r}{bytes32 s}{uint8 v}
         * Compact means, uint8 is not padded to 32 bytes.
         *
         */
        assembly {
            r := mload(add(_sig, 32))
            s := mload(add(_sig, 64))
            /**
             *
             * Here we are loading the last 32 bytes. We exploit the fact that
             * 'mload' will pad with zeroes if we overread.
             * There is no 'mload8' to do this, but that would be nicer.
             *
             */
            v := byte(0, mload(add(_sig, 96)))
            /**
             *
             * Alternative solution:
             * 'byte' is not working due to the Solidity parser, so lets
             * use the second best option, 'and'
             * v := and(mload(add(_sig, 65)), 255)
             *
             */
        }
        /**
         *
         * albeit non-transactional signatures are not specified by the YP, one
         * would expect it to match the YP range of [27, 28]
         * geth uses [0, 1] and some clients have followed. This might change,
         * see: https://github.com/ethereum/go-ethereum/issues/2053
         *
         */
        if (v < 27) {
            v += 27;
        }
        if (v != 27 && v != 28) {
            return (false, address(0));
        }
        return safer_ecrecover(_hash, v, r, s);
    }

    function safeMemoryCleaner()
        internal
        pure
    {
        assembly {
            let fmem := mload(0x40)
            codecopy(fmem, codesize, sub(msize, fmem))
        }
    }
}
/**
 *
 * END PROVABLE_API
 *
 */
