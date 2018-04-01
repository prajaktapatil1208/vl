-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2018 at 04:47 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_staff`
--

CREATE TABLE `assign_staff` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'Computer Engineering'),
(2, 'Civil Engineering'),
(3, 'Electrical Engineering'),
(4, 'Electronics and Telecommunication Engineering'),
(5, 'Instrumentation Engineeing'),
(6, 'Mechanical Engineering'),
(7, 'Applied Science'),
(8, 'Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE `experiments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `lab` int(11) NOT NULL,
  `dataset` tinyint(1) NOT NULL DEFAULT '0',
  `quizset` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiments`
--

INSERT INTO `experiments` (`id`, `name`, `lab`, `dataset`, `quizset`) VALUES
(1, 'Write a program to perform Set operations - Union, Intersection, Difference, Symmetric Difference etc.', 2, 1, 0),
(3, 'Write a program to perform operations on matrices like addition, multiplication, saddle\r\npoint &amp; transpose etc using functions.', 2, 1, 1),
(4, 'Write a program to perform following operations on any database using structure: Add,\r\nDelete, Modify, Display, Search &amp; Sort etc.', 2, 1, 0),
(5, 'Represent polynomial using structures or array and write a program to perform Addition\r\nand Evaluation given polynomial', 2, 1, 1),
(6, 'Represent Circular Queue using Array and write a program to perform operations like\r\nInsert, Delete, and Display front and rear element.', 2, 1, 0),
(7, 'Create a singly linked list with options:\r\na. insert (at front, at end, in the middle),\r\nb. delete (at front, at end, in the middle),\r\nc. Display', 3, 1, 0),
(8, 'Implement stack as an ADT using Linked List', 3, 1, 0),
(9, 'Implement Queue as an ADT using Linked List', 3, 1, 0),
(10, 'Accept input as a string and construct a Doubly Linked List for the input string with each\r\nNode contains, as a data one character from the string and performs:\r\na) Insert\r\nb) delete\r\nc) Display forward\r\nd) Display backward.', 3, 1, 0),
(11, 'Create binary tree and perform recursive and non-recursive traversals.', 3, 1, 0),
(12, 'Implement Sorting Methods using recursion- Bubble sort', 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `experiment_details`
--

CREATE TABLE `experiment_details` (
  `id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `introduction` text NOT NULL,
  `theory` text NOT NULL,
  `objective` text NOT NULL,
  `path` varchar(100) NOT NULL,
  `stimulation_type` int(11) NOT NULL,
  `quiz` tinyint(1) NOT NULL DEFAULT '0',
  `assignment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiment_details`
--

INSERT INTO `experiment_details` (`id`, `exp_id`, `lab_id`, `introduction`, `theory`, `objective`, `path`, `stimulation_type`, `quiz`, `assignment`) VALUES
(10, 3, 2, 'QSByZWN0YW5ndWxhciBhcnJhbmdlbWVudCBvZiBtbiBudW1iZXJzLCBpbiBtIHJvd3MgYW5kIG4gY29sdW1ucyBhbmQgZW5jbG9zZWQgd2l0aGluIGEgYnJhY2tldCBpcyBjYWxsZWQgYSBtYXRyaXguIFdlIHNoYWxsIGRlbm90ZSBtYXRyaWNlcyBieSBjYXBpdGFsIGxldHRlcnMgYXMgQSxCLCBDIGV0Yy48L2JyPg0Ka0EgaXMgYSBtYXRyaXggb2Ygb3JkZXIgbSBuLiBpdGggcm93IGp0aCBjb2x1bW4gZWxlbWVudCBvZiB0aGUgbWF0cml4IGRlbm90ZWQgYnlBIG1hdHJpeCBpcyBub3QganVzdCBhIGNvbGxlY3Rpb24gb2YgZWxlbWVudHMgYnV0IGV2ZXJ5IGVsZW1lbnQgaGFzIGFzc2lnbmVkIGEgZGVmaW5pdGUgcG9zaXRpb24gaW4gYSBwYXJ0aWN1bGFyIHJvdyBhbmQgY29sdW1uLiA8L2JyPg0KCVRocm91Z2hvdXQgdGhpcyBwcmVzZW50YXRpb24gSSBoYXZlIGNob3NlbiB0byB1c2UgYSBzeW1ib2xpYyBtYXRyaXggbm90YXRpb24uICAgVGhpcyBjaG9pY2Ugd2FzIG5vdCBtYWRlIGxpZ2h0bHkuIEkgYW0gYSBzdHJvbmcgYWR2b2NhdGUgb2YgaW5kZXggbm90YXRpb24sIHdoZW4gYXBwcm9wcmlhdGUuIEZvciBleGFtcGxlLCBpbmRleCBub3RhdGlvbiBncmVhdGx5IHNpbXBsaWZpZXMgdGhlIHByZXNlbnRhdGlvbiBhbmQgbWFuaXB1bGF0aW9uIG9mIGRpZmZlcmVudGlhbCBnZW9tZXRyeS4gQXMgYSBydWxlLW9mLXRodW1iLCBpZiB5b3VyIHdvcmsgaXMgZ29pbmcgdG8gcHJpbWFyaWx5IGludm9sdmUgZGlmZmVyZW50aWF0aW9uIHdpdGggcmVzcGVjdCB0byB0aGUgc3BhdGlhbCBjb29yZGluYXRlcywgdGhlbiBpbmRleCBub3RhdGlvbiBpcyBhbG1vc3Qgc3VyZWx5IHRoZSBhcHByb3ByaWF0ZSBjaG9pY2UuIDwvYnI+DQoJSW4gdGhlIHByZXNlbnQgY2FzZSwgaG93ZXZlciwgd2Ugd2lsbCBiZSBtYW5pcHVsYXRpbmcgbGFyZ2Ugc3lzdGVtcyBvZiBlcXVhdGlvbnMgaW4gd2hpY2ggdGhlIG1hdHJpeCBjYWxjdWx1cyBpcyByZWxhdGl2ZWx5IHNpbXBseSB3aGlsZSB0aGUgbWF0cml4IGFsZ2VicmEgYW5kIG1hdHJpeCBhcml0aG1ldGljIGlzIG1lc3N5IGFuZCBtb3JlIGludm9sdmVkLiBUaHVzLCBJIGhhdmUgY2hvc2VuIHRvIHVzZSBzeW1ib2xpYyBub3RhdGlvbi4gPC9icj4NClR3byBtYXRyaWNlcyBtdXN0IGhhdmUgYW4gZXF1YWwgbnVtYmVyIG9mIHJvd3MgYW5kIGNvbHVtbnMgdG8gYmUgYWRkZWQuIFRoZSBzdW0gb2YgdHdvIG1hdHJpY2VzIEEgYW5kIEIgd2lsbCBiZSBhIG1hdHJpeCB3aGljaCBoYXMgdGhlIHNhbWUgbnVtYmVyIG9mIHJvd3MgYW5kIGNvbHVtbnMgYXMgZG8gQSBhbmQgQi4gVGhlIHN1bSBvZiBBIGFuZCBCLCBkZW5vdGVkIEEgKyBCLCBpcyBjb21wdXRlZCBieSBhZGRpbmcgY29ycmVzcG9uZGluZyBlbGVtZW50cyBvZiBBIGFuZCBCPC9icj4NCg==', 'DQo8aDI+TWF0cmljZXMgQWRkaXRpb246IDwvaDI+IDwvYnI+DQpUaGUgc3VtIG9mIHR3byBtYXRyaWNlcyBpcyBhIG1hdHJpeCBvYnRhaW5lZCBieSBhZGRpbmcgdGhlIGNvcnJlc3BvbmRpbmcgZWxlbWVudHMgb2YgdGhlIGdpdmVuIG1hdHJpeC4gPC9icj4NCiAgaXMgYSAyw5cyIG1hdHJpeCBhbmQgICBhbm90aGVyIG1hdHJpeCAyw5cyDQoNCkFkZGl0aW9uIG9mIHR3byBtYXRyaXg6IDwvYnI+DQogCQ0KT1INCklmIEEgPSBbYWlqXSBhbmQgQiA9IFtiaWpdIHRoZW4sDQpBICsgQiA9IFthaWpdICsgW2Jpal0gPSBbYWlqICsgYmlqXSBmb3IgYWxsIGkgYW5kIGouDQoNCjxoMj5QUk9QRVJUSUVTIE9GIE1BVFJJWCBBRERJVElPTjogPC9oMj4gPC9icj4NCjEuQ29tbXV0YXRpdmUgUHJvcGVydHk6IElmIEEgPSBbYWlqXSBhbmQgQiA9IFtiaWpdIGFyZSB0d28gbWF0cmljZXMgb2Ygc2FtZSBvcmRlciwgdGhlbiBBICsgQiA9IEIgKyBBLiA8L2JyPg0KMi5Bc3NvY2lhdGl2ZSBQcm9wZXJ0eTogSWYgQSA9IFthaWpdIGFuZCBCID0gW2Jpal0gYW5kIEMgPSBbY2lqXSBhcmUgbWF0cmljZXMgb2Ygc2FtZSBvcmRlciwgdGhlbiAoQSArIEIpICsgQyA9IEEgKyAoQiArIEMpLiA8L2JyPg0KMy5BZGRpdGl2ZSBJZGVudGl0eTogSWYgQSA9IFthaWpdIGJlIGEgbWF0cml4IG9mIG9yZGVyIG14IG4gYW5kIE8gYmUgYSB6ZXJvIG1hdHJpeCBvZiBvcmRlciBteCBuLCB0aGVuIEEgKyBPID0gTyArIEEgPSBBLiBIZW5jZSB0aGUgbWF0cml4IE8gaXMgdGhlIGFkZGl0aXZlIGlkZW50aXR5IGZvciBtYXRyaXggYWRkaXRpb24uIDwvYnI+DQo0LkFkZGl0aXZlIEludmVyc2U6IEZvciBldmVyeSBtYXRyaXggQSA9IFthaWpdbXhuICwgdGhlcmUgZXhpc3RzIGEgbWF0cml4IC1BID0gWy1haWpdbXhuIHN1Y2ggdGhhdCBBICsgKC1BKSA9IDAuIFRoZSBtYXRyaXggLUEgaXMga25vd24gYXMgdGhlIGFkZGl0aXZlIGludmVyc2Ugb2YgQS4gPC9icj4NCg0KPGgyPk1hdHJpY2VzIE11bHRpcGxpY2F0aW9uOiA8L2gyPjwvYnI+IA0KVHdvIG1hdHJpY2VzIEEgYW5kIEIgY2FuIGJlIG11bHRpcGxpZWQgb25seSBpZiB0aGUgbnVtYmVyIG9mIGNvbHVtbnMgb2YgQSBpcyBlcXVhbCB0byB0aGUgbnVtYmVyIG9mIHJvd3Mgb2YgQi4gSGVuY2UsIGlmIEEgaXMgYSBtIHggbiBtYXRyaXgsIHRoZW4gdG8gZmluZCB0aGUgcHJvZHVjdCBvZiBBIHdpdGggYSBtYXRyaXggQiwgdGhlIG1hdHJpeCBCIG11c3QgaGF2ZSBuIHJvd3MgYW5kIGFueSBmaW5pdGUgbnVtYmVyIG9mIGNvbHVtbnMuIDwvYnI+DQpMZXQgQSBiZSBhIG1hdHJpeCBvZiBvcmRlciBtIHggbiBhbmQgQiBpcyBhIG1hdHJpeCBvZiBvcmRlciBuIHggcCwgdGhlbiB0aGUgcHJvZHVjdCBtYXRyaXggQyBvZiBtYXRyaWNlcyBBIGFuZCBCIHdpbGwgYmU6IDwvYnI+DQpBICAgICAgICAgICAgIHggICAgICAgICAgICAgICBCICAgICAgID0gICAgICAgQyA8L2JyPg0KIA0KSGVuY2UgdGhlIG9yZGVyIG9mIHRoZSBwcm9kdWN0IG1hdHJpeCBDIHdpbGwgYmUgbSB4IHAuIDwvYnI+DQoNCjxoMj5QUk9QRVJUSUVTIE9GIE1VTFRJUExJQ0FUSU9OIE9GIE1BVFJJQ0VTOiA8L2gyPjwvYnI+IA0KDQoxLkFzc29jaWF0aXZlIFByb3BlcnR5OiBJZiBBLCBCIGFuZCBDIGFyZSBhbnkgdGhyZWUgY29tcGF0aWJsZSBtYXRyaWNlcywgdGhlbiBBKEJDKSA9IChBQilDLiA8L2JyPg0KMi5EaXN0cmlidXRpdmUgUHJvcGVydHk6IElmIEEsIEIgYW5kIEMgYXJlIGFueSB0aHJlZSBjb21wYXRpYmxlIG1hdHJpY2VzLCB0aGVuPC9icj4NCmEuIEEoQiArIEMpID0gQUIgKyBCQzwvYnI+DQpiIC4oQSArIEIpQyA9IEFDICsgQkM8L2JyPg0KMy5NdWx0aXBsaWNhdGl2ZSBJZGVudGl0eTogRm9yIGV2ZXJ5IHNxdWFyZSBtYXRyaXggQSwgdGhlcmUgZXhpc3RzIGFuIGlkZW50aXR5IG1hdHJpeCBvZiB0aGUgc2FtZSBvcmRlciBzdWNoIHRoYXQgSUEgPSBBSSA9QS4gPC9icj4NCjxoMj5NYXRyaWNlcyBUcmFuc3Bvc2U6IDwvaDI+PC9icj4NCg0KVGhpcyBhcnRpY2xlIGlzIGFib3V0IHRoZSB0cmFuc3Bvc2Ugb2YgYSBtYXRyaXguIEZvciBvdGhlciB1c2VzLCBzZWUgVHJhbnNwb3NpdGlvbiAoZGlzYW1iaWd1YXRpb24pLiA8L2JyPg0KTm90ZSB0aGF0IHRoaXMgYXJ0aWNsZSBhc3N1bWVzIHRoYXQgbWF0cmljZXMgYXJlIHRha2VuIG92ZXIgYSBjb21tdXRhdGl2ZSByaW5nLiBUaGVzZSByZXN1bHRzIG1heSBub3QgaG9sZCBpbiB0aGUgbm9uLWNvbW11dGF0aXZlIGNhc2UuIDwvYnI+DQpJbiBsaW5lYXIgYWxnZWJyYSwgdGhlIHRyYW5zcG9zZSBvZiBhIG1hdHJpeCBpcyBhbiBvcGVyYXRvciB3aGljaCBmbGlwcyBhIG1hdHJpeCBvdmVyIGl0cyBkaWFnb25hbCwgdGhhdCBpcyBpdCBzd2l0Y2hlcyB0aGUgcm93IGFuZCBjb2x1bW4gaW5kaWNlcyBvZiB0aGUgbWF0cml4IGJ5IHByb2R1Y2luZyBhbm90aGVyIG1hdHJpeCBkZW5vdGVkIGFzIEFUIChhbHNvIHdyaXR0ZW4gQeKAsiwgQXRyLCB0QSBvciBBdCkuIEl0IGlzIGFjaGlldmVkIGJ5IGFueSBvbmUgb2YgdGhlIGZvbGxvd2luZyBlcXVpdmFsZW50IGFjdGlvbnM6IDwvYnI+DQpUaGUgdHJhbnNwb3NlIEFUIG9mIGEgbWF0cml4IEEgY2FuIGJlIG9idGFpbmVkIGJ5IHJlZmxlY3RpbmcgdGhlIGVsZW1lbnRzIGFsb25nIGl0cyBtYWluIGRpYWdvbmFsLiBSZXBlYXRpbmcgdGhlIHByb2Nlc3Mgb24gdGhlIHRyYW5zcG9zZWQgbWF0cml4IHJldHVybnMgdGhlIGVsZW1lbnRzIHRvIHRoZWlyIG9yaWdpbmFsIHBvc2l0aW9uLiByZWZsZWN0IEEgb3ZlciBpdHMgbWFpbiBkaWFnb25hbCAod2hpY2ggcnVucyBmcm9tIHRvcC1sZWZ0IHRvIGJvdHRvbS1yaWdodCkgdG8gb2J0YWluIEFUPC9icj4NCndyaXRlIHRoZSByb3dzIG9mIEEgYXMgdGhlIGNvbHVtbnMgb2YgQVQ8L2JyPg0Kd3JpdGUgdGhlIGNvbHVtbnMgb2YgQSBhcyB0aGUgcm93cyBvZiBBVDwvYnI+DQoJSWYgQSA9IFthaWpdIGJlIGFuIG0gw5cgbiBtYXRyaXgsIHRoZW4gdGhlIG1hdHJpeCBvYnRhaW5lZCBieSBpbnRlcmNoYW5naW5nDQp0aGUgcm93cyBhbmQgY29sdW1ucyBvZiBBIGlzIGNhbGxlZCB0aGUgdHJhbnNwb3NlIG9mIEEuIDwvYnI+DQpUcmFuc3Bvc2Ugb2YgdGhlIG1hdHJpeCBBIGlzIGRlbm90ZWQgYnkgQeKAsiBvciAoQVQpLiBJbiBvdGhlciB3b3JkcywgaWYNCkEgPSBbYWlqXSBtw5duLCB0aGVuIEFUID0gW2FqaV1uw5dtLiA8L2JyPg0KDQo8aDI+UFJPUEVSVElFUyBPRiBUUkFOU1BPU0UgT0YgTUFUUklDRVM6IDwvaDI+PC9icj4NCkZvciBhbnkgbWF0cmljZXMgQSBhbmQgQiBvZiBzdWl0YWJsZSBvcmRlcnMsIHdlIGhhdmU8L2JyPg0KKGkpIChBVClUID0gQSwgPC9icj4NCihpaSkgKGtBKVQgPSBrQVQgKHdoZXJlIGsgaXMgYW55IGNvbnN0YW50KSA8L2JyPg0KKGlpaSkgKEEgKyBCKVQgPSBBVCArIEJUPC9icj4NCihpdikgKEFCKVQgPSBCVCBBVDwvYnI+DQo8aDI+TWF0cmljZXMgb2YgU2FkZGxlIFBvaW50OiA8L2gyPg0KQW4gZW50cnkgYWlqIGluIGEgbWF0cml4IGlzIGNhbGxlZCBhIHNhZGRsZSBwb2ludCBpZiBpdCBpcyBzdHJpY3RseSBncmVhdGVyIHRoYW4gYWxsIHRoZSBlbnRyaWVzIGluIHRoZSBpdGggcm93IGFuZCBzdHJpY3RseSBsZXNzZXIgdGhhbiBhbGwgZW50cmllcyBpbiB0aGUganRoIGNvbHVtbiBvciB2aWNlLXZlcnNhLiBGb3IgZXhhbXBsZSwgdGhlIG1hdHJpeCBzaG93biBiZWxvdyBoYXMgdHdvIHNhZGRsZSBwb2ludHMuIDwvYnI+DQoNCgkJIA0KDQoNCg0KQSBzaW1wbGUgc29sdXRpb24gaXMgdG8gdHJhdmVyc2UgYWxsIG1hdHJpeCBlbGVtZW50cyBvbmUgYnkgb25lIGFuZCBjaGVjayBpZiB0aGUgZWxlbWVudCBpcyBTYWRkbGUgUG9pbnQgb3Igbm90LiA8L2JyPg0KQW4gZWZmaWNpZW50IHNvbHV0aW9uIGlzIGJhc2VkIG9uIGJlbG93IHN0ZXBzLiA8L2JyPg0KVHJhdmVyc2UgYWxsIHJvd3Mgb25lIGJ5IG9uZSBhbmQgZG8gZm9sbG93aW5nIGZvciBldmVyeSByb3cgaS4gPC9icj4NCjEuRmluZCB0aGUgbWluaW11bSBlbGVtZW50IG9mIGN1cnJlbnQgcm93IGFuZCBzdG9yZSBjb2x1bW4gaW5kZXggb2YgdGhlIG1pbmltdW0gZWxlbWVudC4gPC9icj4NCjIuQ2hlY2sgaWYgdGhlIHJvdyBtaW5pbXVtIGVsZW1lbnQgaXMgYWxzbyBtYXhpbXVtIGluIGl0cyBjb2x1bW4uIFdlIHVzZSB0aGUgc3RvcmVkIGNvbHVtbiBpbmRleCBoZXJlLiA8L2JyPg0KMy5JZiB5ZXMsIHRoZW4gc2FkZGxlIHBvaW50IGVsc2UgY29udGludWUgdGlsbCBlbmQgb2YgbWF0cml4LiA8L2JyPg0KR2l2ZW4gYSBtYXRyaXggb2YgbiB4IG4gc2l6ZSwgdGhlIHRhc2sgaXMgdG8gZmluZCBzYWRkbGUgcG9pbnQgb2YgdGhlIG1hdHJpeC4gQSBzYWRkbGUgcG9pbnQgaXMgYW4gZWxlbWVudCBvZiB0aGUgbWF0cml4IHN1Y2ggdGhhdCBpdCBpcyB0aGUgbWluaW11bSBlbGVtZW50IGluIGl0cyByb3cgYW5kIG1heGltdW0gaW4gaXRzIGNvbHVtbi4gPC9icj4NCkV4YW1wbGVzOiA8L2JyPg0KSW5wdXQ6IE1hdFszXVszXSA9IHsgezEsIDIsIDN9LDwvYnI+DQogICAgICAgICAgICAgICAgICAJCXs0LCA1LCA2fSw8L2JyPg0KICAgICAgICAgICAgICAgICAgCQl7NywgOCwgOX19PC9icj4NCk91dHB1dDogNzwvYnI+DQo3IGlzIG1pbmltdW0gaW4gaXRzIHJvdyBhbmQgbWF4aW11bSBpbiBpdHMgY29sdW1uLiA8L2JyPg0KDQpJbnB1dDogTWF0WzNdWzNdID0ge3sxLCAyLCAzfSw8L2JyPg0KICAgICAgICAgICAgICAgICAgICAJCXs0LCA1LCA2fSw8L2JyPg0KICAgICAgICAgICAgICAgICAJCSB7MTAsIDE4LCA0fX08L2JyPg0KT3V0cHV0OiBObyBzYWRkbGUgcG9pbnQ8L2JyPg0K', 'MS4gcHJvdmlkZXMgYmFzaWMgaW5mb3JtYXRpb24gYWJvdXQgbWF0cmljZXM8L2JyPg0KMi5wZXJmb3JtIG1hdHJpeCBtYW5pcHVsYXRpb25zPC9icj4NCg==', 'c2ltdWxhdGlvblxtYXRyaXgtbXVsdGlwbGljYXRpb25caW5kZXguaHRtbA==', 0, 3, ''),
(11, 5, 2, 'UG9seW5vbWlhbHMgaXMgaW1wb3J0YW50IGFwcGxpY2F0aW9ucyBvZiBhcnJheXMgYW5kIGxpbmtlZCBsaXN0cy4gQSBwb2x5bm9taWFsIGlzIGNvbXBvc2VkIG9mIGRpZmZlcmVudCB0ZXJtcyB3aGVyZSBlYWNoIG9mIHRoZW0gaG9sZHMgYSBjb2VmZmljaWVudCBhbmQgYW4gZXhwb25lbnQuIDwvYnI+DQpXaGF0IGlzIFBvbHlub21pYWw/IDwvYnI+DQpBIHBvbHlub21pYWwgcCh4KSBpcyB0aGUgZXhwcmVzc2lvbiBpbiB2YXJpYWJsZSB4IHdoaWNoIGlzIGluIHRoZSBmb3JtIChheG4gKyBieG4tMSArIOKApi4gKyBqeCsgayksIHdoZXJlIGEsIGIsIGMg4oCmLiwgayAgZmFsbCBpbiB0aGUgY2F0ZWdvcnkgb2YgcmVhbCBudW1iZXJzIGFuZCDigJhu4oCZIGlzIG5vbiBuZWdhdGl2ZSBpbnRlZ2VyLCB3aGljaCBpcyBjYWxsZWQgdGhlIGRlZ3JlZSBvZiBwb2x5bm9taWFsLiA8L2JyPg0KQW4gaW1wb3J0YW50IGNoYXJhY3RlcmlzdGljcyBvZiBwb2x5bm9taWFsIGlzIHRoYXQgZWFjaCB0ZXJtIGluIHRoZSBwb2x5bm9taWFsIGV4cHJlc3Npb24gY29uc2lzdHMgb2YgdHdvIHBhcnRzOiA8L2JyPg0K4oCiCW9uZSBpcyB0aGUgY29lZmZpY2llbnQ8L2JyPg0K4oCiCW90aGVyIGlzIHRoZSBleHBvbmVudDwvYnI+DQo=', 'VGhlIHBvbHlub21pYWwgZXF1YXRpb24gZm9ybXVsYSBpcyBQKHgpPUFuWG4gKyBBbi0xWG4tMSArIEFuLTJYbi0yK+KApiArQTFYICsgQTAuIDwvYnI+DQpFeGFtcGxlOiA8L2JyPg0KMTB4MiArIDI2eCwgaGVyZSAxMCBhbmQgMjYgYXJlIGNvZWZmaWNpZW50cyBhbmQgMiwgMSBhcmUgaXRzIGV4cG9uZW50aWFsIHZhbHVlLiA8L2JyPg0KUG9pbnRzIHRvIGtlZXAgaW4gTWluZCB3aGlsZSB3b3JraW5nIHdpdGggUG9seW5vbWlhbHM6IDwvYnI+DQrigKIJVGhlIHNpZ24gb2YgZWFjaCBjb2VmZmljaWVudCBhbmQgZXhwb25lbnQgaXMgc3RvcmVkIHdpdGhpbiB0aGUgY29lZmZpY2llbnQgYW5kIHRoZSBleHBvbmVudCBpdHNlbGY8L2JyPg0K4oCiCUFkZGl0aW9uYWwgdGVybXMgaGF2aW5nIGVxdWFsIGV4cG9uZW50IGlzIHBvc3NpYmxlIG9uZTwvYnI+DQrigKIJVGhlIHN0b3JhZ2UgYWxsb2NhdGlvbiBmb3IgZWFjaCB0ZXJtIGluIHRoZSBwb2x5bm9taWFsIG11c3QgYmUgZG9uZSBpbiBhc2NlbmRpbmcgYW5kIGRlc2NlbmRpbmcgb3JkZXIgb2YgdGhlaXIgZXhwb25lbnQ8L2JyPg0KDQogDQoNClJlcHJlc2VudGF0aW9uIG9mIFBvbHlub21pYWw6IDwvYnI+DQpQb2x5bm9taWFsIGNhbiBiZSByZXByZXNlbnRlZCBpbiB0aGUgdmFyaW91cyB3YXlzLiBUaGVzZSBhcmU6IDwvYnI+DQrigKIJQnkgdGhlIHVzZSBvZiBhcnJheXM8L2JyPg0K4oCiCUJ5IHRoZSB1c2Ugb2YgTGlua2VkIExpc3Q8L2JyPg0KDQpSZXByZXNlbnRhdGlvbiBvZiBQb2x5bm9taWFsIHVzaW5nIEFycmF5OiA8L2JyPg0KVGhlcmUgbWF5IGFyaXNlIHNvbWUgc2l0dWF0aW9uIHdoZXJlIHlvdSBuZWVkIHRvIGV2YWx1YXRlIG1hbnkgcG9seW5vbWlhbCBleHByZXNzaW9ucyBhbmQgcGVyZm9ybSBiYXNpYyBhcml0aG1ldGljIG9wZXJhdGlvbnMgbGlrZTogYWRkaXRpb24gYW5kIHN1YnRyYWN0aW9uIHdpdGggdGhvc2UgbnVtYmVycy4gRm9yIHRoaXMgeW91IHdpbGwgaGF2ZSB0byBnZXQgYSB3YXkgdG8gcmVwcmVzZW50IHRob3NlIHBvbHlub21pYWxzLiBUaGUgc2ltcGxlIHdheSBpcyB0byByZXByZXNlbnQgYSBwb2x5bm9taWFsIHdpdGggZGVncmVlIOKAmG7igJkgYW5kIHN0b3JlIHRoZSBjb2VmZmljaWVudCBvZiBuKzEgdGVybXMgb2YgdGhlIHBvbHlub21pYWwgaW4gYXJyYXkuIFNvIGV2ZXJ5IGFycmF5IGVsZW1lbnQgd2lsbCBjb25zaXN0cyBvZiB0d28gdmFsdWVzOiA8L2JyPg0K4oCiCUNvZWZmaWNpZW50IGFuZDwvYnI+DQrigKIJRXhwb25lbnQ8L2JyPg0KDQpBZGRpdGlvbiBvZiB0d28gUG9seW5vbWlhbHM6IDwvYnI+DQpGb3IgYWRkaW5nIHR3byBwb2x5bm9taWFscyB1c2luZyBhcnJheXMgaXMgc3RyYWlnaHRmb3J3YXJkIG1ldGhvZCwgc2luY2UgYm90aCB0aGUgYXJyYXlzIG1heSBiZSBhZGRlZCB1cCBlbGVtZW50IHdpc2UgYmVnaW5uaW5nIGZyb20gMCB0byBuLTEsIHJlc3VsdGluZyBpbiBhZGRpdGlvbiBvZiB0d28gcG9seW5vbWlhbHMuICBBZGRpdGlvbiBvZiB0d28gcG9seW5vbWlhbHMgdXNpbmcgbGlua2VkIGxpc3QgcmVxdWlyZXMgY29tcGFyaW5nIHRoZSBleHBvbmVudHMsIGFuZCB3aGVyZXZlciB0aGUgZXhwb25lbnRzIGFyZSBmb3VuZCB0byBiZSBzYW1lLCB0aGUgY29lZmZpY2llbnRzIGFyZSBhZGRlZCB1cC4gIEZvciB0ZXJtcyB3aXRoIGRpZmZlcmVudCBleHBvbmVudHMsIHRoZSBjb21wbGV0ZSB0ZXJtIGlzIHNpbXBseSBhZGRlZCB0byB0aGUgcmVzdWx0IHRoZXJlYnkgbWFraW5nIGl0IGEgcGFydCBvZiBhZGRpdGlvbiByZXN1bHQuICBUaGUgY29tcGxldGUgcHJvZ3JhbSB0byBhZGQgdHdvIHBvbHlub21pYWxzIGlzIGdpdmVuIGluIHN1YnNlcXVlbnQgc2VjdGlvbi4gPC9icj4NCg==', '4oCiCUV2YWx1YXRlIGEgcG9seW5vbWlhbCBmb3IgZ2l2ZW4gdmFsdWVzIG9mIGVhY2ggdmFyaWFibGUuIDwvYnI+DQrigKIJU2ltcGxpZnkgcG9seW5vbWlhbHMgYnkgY29sbGVjdGluZyBsaWtlIHRlcm1zLiA8L2JyPg0KDQo=', 'c2ltdWxhdGlvbi9FeGFtcGxlIDItIEFkZGluZyBwb2x5bm9taWFscy5tcDQ=', 0, 5, ''),
(12, 6, 2, 'Q2lyY3VsYXIgcXVldWUgaXMgYSBsaW5lYXIgZGF0YSBzdHJ1Y3R1cmUuIEl0IGZvbGxvd3MgRklGTyBwcmluY2lwbGUuIEluIGNpcmN1bGFyIHF1ZXVlIHRoZSBsYXN0IG5vZGUgaXMgY29ubmVjdGVkIGJhY2sgdG8gdGhlIGZpcnN0IG5vZGUgdG8gbWFrZSBhIGNpcmNsZS4gRWxlbWVudHMgYXJlIGFkZGVkIGF0IHRoZSByZWFyIGVuZCBhbmQgdGhlIGVsZW1lbnRzIGFyZWRlbGV0ZWQgYXQgZnJvbnQgZW5kIG9mIHRoZSBxdWV1ZS4gSXQgcGVyZm9ybWVkIGF0IGJvdGggdGhlIGVuZHMgKGZyb250IGFuZCByZWFyKS4gVGhhdCBtZWFucywgd2UgY2FuIGluc2VydCBhdCBib3RoIGZyb250IGFuZCByZWFyIHBvc2l0aW9ucyBhbmQgY2FuIGRlbGV0ZSBmcm9tIGJvdGggZnJvbnQgYW5kIHJlYXIgcG9zaXRpb25zLjwvYnI+DQpBIFF1ZXVlIGlzIGEgZGF0YSBzdHJ1Y3R1cmUgd2hpY2ggZm9sbG93cyBGSUZPIChmaXJzdCBpbiBmaXJzdCBvdXQpIHByaW5jaXBsZS4gVGhlIGVsZW1lbnQgd2hpY2ggaXMgZW50ZXJlZCBmaXJzdCBpbnRvIHRoZSBxdWV1ZSAoZmlyc3QgaW4pIGlzIHRoZSBlbGVtZW50IHdoaWNoIGNhbiBiZSBmaXJzdCBkZWxldGVkIGZyb20gdGhlIHF1ZXVlIChmaXJzdCBvdXQpLiBUd28gb3BlcmF0aW9ucyBFTlFVRVVFIGFuZCBERVFVRVVFIGFyZSBjb21tb25seSB1c2VkIGZvciBxdWV1ZXMuIEhlcmUsIEVOUVVFVUUgbWVhbnMgaW5zZXJ0aW9uIGFuZCBERVFVRVVFIG1lYW5zIGRlbGV0aW9uLiBPcGVyYXRpb25zIGxpa2UgaW5zZXJ0aW9uLCBkZWxldGlvbiBjYW4gYmUgcGVyZm9ybWVkIGF0IGJvdGggZW5kcyBvZiBhIHF1ZXVlLiA8L2JyPg0KVHdvIHBvaW50ZXJzIGNhbGxlZCBGUk9OVCBhbmQgUkVBUiBhcmUgdXNlZCBmb3IgcXVldWVzLiBIZXJlLCBGUk9OVCByZXByZXNlbnRzIHRoZSBlbmQgYXQgd2hpY2ggZGVsZXRpb24gY2FuIGJlIHBlcmZvcm1lZCBhbmQgUkVBUiByZXByZXNlbnRzIHRoZSBlbmQgYXQgd2hpY2ggaW5zZXJ0aW9uIGNhbiBiZSBwZXJmb3JtZWQuIEEgY2lyY3VsYXIgcXVldWUgaXMgYSB2YXJpYXRpb24gb2YgYSBxdWV1ZSBpbiB3aGljaCB0aGUgbGFzdCBlbGVtZW50IGlzIGNvbm5lY3RlZCB0byBmaXJzdCBlbGVtZW50LiBUaGVyZSBhcmUgc29tZSBvdGhlciBvcGVyYXRpb25zIGZvciBxdWV1ZXMgd2hpY2ggYXJlIFBFRUssIElTRlVMTCBhbmQgSVNFTVBUWS4gSGVyZSwgUEVFSyBpcyB1c2VkIHRvIGdldCB0aGUgZmlyc3QgZWxlbWVudCBvZiB0aGUgcXVldWUgd2l0aG91dCByZW1vdmluZyBpdCBhbmQgSVNGVUxMLCBJU0VNUFRZIGFyZSB1c2VkIHRvIGNoZWNrIHdoZXRoZXIgdGhlIHF1ZXVlIGlzIGZ1bGwgKG92ZXIgZmxvdyBlcnJvcikgb3IgZW1wdHkgKHVuZGVyIGZsb3cgZXJyb3IpIHJlc3BlY3RpdmVseS4gVGhlIGltYWdlIGJlbG93IHNob3dzIGEgY2lyY3VsYXIgcXVldWUsIGl0IG9wZXJhdGlvbnMgKG9ubHkgaW5zZXJ0aW9uIGFuZCBkZWxldGlvbiBidXQgbm90IG90aGVycykgYW5kIHBvaW50ZXJzLiA8L2JyPg==', 'V2hhdCBpcyBDaXJjdWxhciBRdWV1ZT8gPC9icj4NCkEgQ2lyY3VsYXIgUXVldWUgY2FuIGJlIGRlZmluZWQgYXMgZm9sbG93cy4uLiA8L2JyPg0KQ2lyY3VsYXIgUXVldWUgaXMgYSBsaW5lYXIgZGF0YSBzdHJ1Y3R1cmUgaW4gd2hpY2ggdGhlIG9wZXJhdGlvbnMgYXJlIHBlcmZvcm1lZCBiYXNlZCBvbiBGSUZPIChGaXJzdCBJbiBGaXJzdCBPdXQpIHByaW5jaXBsZSBhbmQgdGhlIGxhc3QgcG9zaXRpb24gaXMgY29ubmVjdGVkIGJhY2sgdG8gdGhlIGZpcnN0IHBvc2l0aW9uIHRvIG1ha2UgYSBjaXJjbGUuIDwvYnI+DQoNCkltcGxlbWVudGF0aW9uIG9mIENpcmN1bGFyIFF1ZXVlPC9icj4NClRvIGltcGxlbWVudCBhIGNpcmN1bGFyIHF1ZXVlIGRhdGEgc3RydWN0dXJlIHVzaW5nIGFycmF5LCB3ZSBmaXJzdCBwZXJmb3JtIHRoZSBmb2xsb3dpbmcgc3RlcHMgYmVmb3JlPC9icj4NCndlIGltcGxlbWVudCBhY3R1YWwgb3BlcmF0aW9ucy4gPC9icj4NCuKAoglTdGVwIDE6IEluY2x1ZGUgYWxsIHRoZSBoZWFkZXIgZmlsZXMgd2hpY2ggYXJlIHVzZWQgaW4gdGhlIHByb2dyYW0gYW5kIGRlZmluZSBhIGNvbnN0YW50ICdTSVpFJyB3aXRoIHNwZWNpZmljIHZhbHVlLiA8L2JyPg0K4oCiCVN0ZXAgMjogRGVjbGFyZSBhbGwgdXNlciBkZWZpbmVkIGZ1bmN0aW9ucyB1c2VkIGluIGNpcmN1bGFyIHF1ZXVlDQppbXBsZW1lbnRhdGlvbi4gPC9icj4NCuKAoglTdGVwIDM6IENyZWF0ZSBhIG9uZSBkaW1lbnNpb25hbCBhcnJheSB3aXRoIGFib3ZlIGRlZmluZWQgU0laRSAoaW50IGNRdWV1ZVtTSVpFXSkgPC9icj4NCuKAoglTdGVwIDQ6IERlZmluZSB0d28gaW50ZWdlciB2YXJpYWJsZXMgJ2Zyb250JyBhbmQgJ3JlYXInIGFuZCBpbml0aWFsaXplIGJvdGggd2l0aCAnLTEnLiAoaW50IGZyb250ID0tMSwgcmVhciA9IC0xKSA8L2JyPg0K4oCiCVN0ZXAgNTogSW1wbGVtZW50IG1haW4gbWV0aG9kIGJ5IGRpc3BsYXlpbmcgbWVudSBvZiBvcGVyYXRpb25zIGxpc3QgYW5kIG1ha2Ugc3VpdGFibGUgZnVuY3Rpb24gY2FsbHMgdG8gcGVyZm9ybSBvcGVyYXRpb24gc2VsZWN0ZWQgYnkgdGhlIHVzZXIgb24gY2lyY3VsYXIgcXVldWUuIDwvYnI+DQplblF1ZXVlKHZhbHVlKSAtIEluc2VydGluZyB2YWx1ZSBpbnRvIHRoZSBDaXJjdWxhciBRdWV1ZTwvYnI+DQpJbiBhIGNpcmN1bGFyIHF1ZXVlLCBlblF1ZXVlKCkgaXMgYSBmdW5jdGlvbiB3aGljaCBpcyB1c2VkIHRvIGluc2VydCBhbiBlbGVtZW50IGludG8gdGhlIGNpcmN1bGFyIHF1ZXVlLkluIGEgY2lyY3VsYXIgcXVldWUsIHRoZSBuZXcgZWxlbWVudCBpcyBhbHdheXMgaW5zZXJ0ZWQgYXQgcmVhciBwb3NpdGlvbi5UaGUgZW5RdWV1ZSgpIGZ1bmN0aW9uIHRha2VzIG9uZSBpbnRlZ2VyIHZhbHVlIGFzIHBhcmFtZXRlciBhbmQgaW5zZXJ0cyB0aGF0IHZhbHVlIGludG8gdGhlIGNpcmN1bGFyIHF1ZXVlLiBXZSBjYW4gdXNlIHRoZSBmb2xsb3dpbmc8L2JyPg0Kc3RlcHMgdG8gaW5zZXJ0IGFuIGVsZW1lbnQgaW50byB0aGUgY2lyY3VsYXIgcXVldWUuLi4gPC9icj4NCuKAoglTdGVwIDE6IENoZWNrIHdoZXRoZXIgcXVldWUgaXMgRlVMTC4gKChyZWFyID09IFNJWkUtMSAmJiBmcm9udCA9PSAwKSB8fCAoZnJvbnQgPT1yZWFyKzEpKSA8L2JyPg0K4oCiCVN0ZXAgMjogSWYgaXQgaXMgRlVMTCwgdGhlbiBkaXNwbGF5ICJRdWV1ZSBpcyBGVUxMISEhIEluc2VydGlvbiBpcyBub3QgcG9zc2libGUhISEiIGFuZCB0ZXJtaW5hdGUgdGhlIGZ1bmN0aW9uLiA8L2JyPg0K4oCiCVN0ZXAgMzogSWYgaXQgaXMgTk9UIEZVTEwsIHRoZW4gY2hlY2sgcmVhciA9PSBTSVpFIC0gMSAmJiBmcm9udCAhPSAwIGlmIGl0IGlzIFRSVUUsIHRoZW4gc2V0IHJlYXIgPSAtMS4gPC9icj4NCuKAoglTdGVwIDQ6IEluY3JlbWVudCByZWFyIHZhbHVlIGJ5IG9uZSAocmVhcisrKSwgc2V0IHF1ZXVlW3JlYXJdID0gdmFsdWUgYW5kIGNoZWNrICdmcm9udD09IC0xJyBpZiBpdCBpcyBUUlVFLCB0aGVuIHNldCBmcm9udCA9IDAuIDwvYnI+DQoNCmRlUXVldWUoKSAtIERlbGV0aW5nIGEgdmFsdWUgZnJvbSB0aGUgQ2lyY3VsYXIgUXVldWU8L2JyPg0KSW4gYSBjaXJjdWxhciBxdWV1ZSwgZGVRdWV1ZSgpIGlzIGEgZnVuY3Rpb24gdXNlZCB0byBkZWxldGUgYW4gZWxlbWVudCBmcm9tIHRoZSBjaXJjdWxhciBxdWV1ZS4gSW4gYSBjaXJjdWxhciBxdWV1ZSwgdGhlIGVsZW1lbnQgaXMgYWx3YXlzIGRlbGV0ZWQgZnJvbSBmcm9udCBwb3NpdGlvbi4gVGhlIGRlUXVldWUoKSBmdW5jdGlvbiBkb2Vzbid0IHRha2UgYW55IHZhbHVlIGFzIHBhcmFtZXRlci4gV2UgY2FuIHVzZSB0aGUgZm9sbG93aW5nIHN0ZXBzIHRvIGRlbGV0ZSBhbiBlbGVtZW50IGZyb20gdGhlIGNpcmN1bGFyIHF1ZXVlLi4uIDwvYnI+DQrigKIJU3RlcCAxOiBDaGVjayB3aGV0aGVyIHF1ZXVlIGlzIEVNUFRZLiAoZnJvbnQgPT0gLTEgJiYgcmVhciA9PTEpIDwvYnI+DQrigKIJU3RlcCAyOiBJZiBpdCBpcyBFTVBUWSwgdGhlbiBkaXNwbGF5ICJRdWV1ZSBpcyBFTVBUWSEhISBEZWxldGlvbiBpcyBub3QgcG9zc2libGUhISEiIGFuZCB0ZXJtaW5hdGUgdGhlIGZ1bmN0aW9uLiA8L2JyPg0K4oCiCVN0ZXAgMzogSWYgaXQgaXMgTk9UIEVNUFRZLCB0aGVuIGRpc3BsYXkgcXVldWVbZnJvbnRdIGFzIGRlbGV0ZWQgZWxlbWVudCBhbmQgaW5jcmVtZW50IHRoZSBmcm9udCB2YWx1ZSBieSBvbmUgKGZyb250ICsrKS4gVGhlbiBjaGVjayB3aGV0aGVyIGZyb250ID09IFNJWkUsIGlmIGl0IGlzIFRSVUUsIHRoZW4gc2V0IGZyb250ID0gMC4gVGhlbiBjaGVjayB3aGV0aGVyIGJvdGggZnJvbnQgLSAxIGFuZCByZWFyIGFyZSBlcXVhbCAoZnJvbnQgLTEgPT0gcmVhciksIGlmIGl0IFRSVUUsIHRoZW4gc2V0IGJvdGggZnJvbnQgYW5kIHJlYXIgdG8gJy0xJyAoZnJvbnQgPSByZWFyID0gLTEpLiA8L2JyPg0KDQoNCmRpc3BsYXkoKSAtIERpc3BsYXlzIHRoZSBlbGVtZW50cyBvZiBhIENpcmN1bGFyIFF1ZXVlPC9icj4NCldlIGNhbiB1c2UgdGhlIGZvbGxvd2luZyBzdGVwcyB0byBkaXNwbGF5IHRoZSBlbGVtZW50cyBvZiBhIGNpcmN1bGFyIHF1ZXVlLi4uIDwvYnI+DQoNCuKAoglTdGVwIDE6IENoZWNrIHdoZXRoZXIgcXVldWUgaXMgRU1QVFkuIChmcm9udCA9PSAtMSkgPC9icj4NCuKAoglTdGVwIDI6IElmIGl0IGlzIEVNUFRZLCB0aGVuIGRpc3BsYXkgIlF1ZXVlIGlzIEVNUFRZISEhIiBhbmQgdGVybWluYXRlIHRoZSBmdW5jdGlvbi4gPC9icj4NCuKAoglTdGVwIDM6IElmIGl0IGlzIE5PVCBFTVBUWSwgdGhlbiBkZWZpbmUgYW4gaW50ZWdlciB2YXJpYWJsZSAnaScgYW5kIHNldCAnaSA9IGZyb250Jy4gPC9icj4NCuKAoglTdGVwIDQ6IENoZWNrIHdoZXRoZXIgJ2Zyb250IDw9IHJlYXInLCBpZiBpdCBpcyBUUlVFLCB0aGVuIGRpc3BsYXkgJ3F1ZXVlW2ldJyB2YWx1ZSBhbmQgaW5jcmVtZW50ICdpJyB2YWx1ZSBieSBvbmUgKGkrKykuIFJlcGVhdCB0aGUgc2FtZSB1bnRpbCAnaSA8PSByZWFyJyBiZWNvbWVzIEZBTFNFLiA8L2JyPg0K4oCiCVN0ZXAgNTogSWYgJ2Zyb250IDw9IHJlYXInIGlzIEZBTFNFLCB0aGVuIGRpc3BsYXkgJ3F1ZXVlW2ldJyB2YWx1ZSBhbmQgaW5jcmVtZW50ICdpJyB2YWx1ZSBieSBvbmUgKGkrKykuIFJlcGVhdCB0aGUgc2FtZSB1bnRpbCdpIDw9IFNJWkUgLSAxJyBiZWNvbWVzIEZBTFNFLiA8L2JyPg0K4oCiCVN0ZXAgNjogU2V0IGkgdG8gMC4gPC9icj4NCuKAoglTdGVwIDc6IEFnYWluIGRpc3BsYXkgJ2NRdWV1ZVtpXScgdmFsdWUgYW5kIGluY3JlbWVudCBpIHZhbHVlIGJ5IG9uZSAoaSsrKS4gUmVwZWF0IHRoZSBzYW1lIHVudGlsICdpIDw9IHJlYXInIGJlY29tZXMgRkFMU0UuIDwvYnI+', 'SW4gdGhpcyBNb2R1bGUgeW91IHdpbGwgYmUgbGVhcm5pbmcgdGhlIGZvbGxvd2luZzogPC9icj4NCuKAoglDaXJjdWxhciBRdWV1ZTwvYnI+', 'c2ltdWxhdGlvbi9jaXJjdWxhcnF1ZXVlLmdpZg==', 0, 6, ''),
(13, 4, 2, 'QyBTdHJ1Y3R1cmUgaXMgYSBjb2xsZWN0aW9uIG9mIGRpZmZlcmVudCBkYXRhIHR5cGVzIHdoaWNoIGFyZSBncm91cGVkIHRvZ2V0aGVyIGFuZCBlYWNoIGVsZW1lbnQgaW4gYSBDIHN0cnVjdHVyZSBpcyBjYWxsZWQgbWVtYmVyLjwvYnI+DQril48gSWYgeW91IHdhbnQgdG8gYWNjZXNzIHN0cnVjdHVyZSBtZW1iZXJzIGluIEMsIHN0cnVjdHVyZSB2YXJpYWJsZSBzaG91bGQgYmUgZGVjbGFyZWQuIDwvYnI+DQril48gTWFueSBzdHJ1Y3R1cmUgdmFyaWFibGVzIGNhbiBiZSBkZWNsYXJlZCBmb3Igc2FtZSBzdHJ1Y3R1cmUgYW5kIG1lbW9yeSB3aWxsIGJlIGFsbG9jYXRlZCBmb3IgZWFjaCBzZXBhcmF0ZWx5LiA8L2JyPg0K4pePIEl0IGlzIGEgYmVzdCBwcmFjdGljZSB0byBpbml0aWFsaXplIGEgc3RydWN0dXJlIHRvIG51bGwgd2hpbGUgZGVjbGFyaW5nLCBpZiB3ZSBkb27igJl0IGFzc2lnbiBhbnkgdmFsdWVzIHRvIHN0cnVjdHVyZSBtZW1iZXJzLiA8L2JyPg0K', 'PGI+QXJyYXkgb2YgU3RydWN0dXJlczwvYj4NCkFzIHlvdSBrbm93LCBDIFN0cnVjdHVyZSBpcyBjb2xsZWN0aW9uIG9mIGRpZmZlcmVudCBkYXRhdHlwZXMgKCB2YXJpYWJsZXMgKSB3aGljaCBhcmUgZ3JvdXBlZCB0b2dldGhlci4gV2hlcmVhcywgYXJyYXkgb2Ygc3RydWN0dXJlcyBpcyBub3RoaW5nIGJ1dCBjb2xsZWN0aW9uIG9mIHN0cnVjdHVyZXMuIFRoaXMgaXMgYWxzbyBjYWxsZWQgYXMgc3RydWN0dXJlIGFycmF5IGluIEMuIDwvYnI+DQo8Yj5QYXNzaW5nIHN0cnVjdCB0byBmdW5jdGlvbjwvYj48L2JyPg0K4pePIEEgc3RydWN0dXJlIGNhbiBiZSBwYXNzZWQgdG8gYW55IGZ1bmN0aW9uIGZyb20gbWFpbiBmdW5jdGlvbiBvciBmcm9tIGFueSBzdWIgZnVuY3Rpb24uIDwvYnI+DQril48gU3RydWN0dXJlIGRlZmluaXRpb24gd2lsbCBiZSBhdmFpbGFibGUgd2l0aGluIHRoZSBmdW5jdGlvbiBvbmx5LiA8L2JyPg0K4pePIEl0IHdvbuKAmXQgYmUgYXZhaWxhYmxlIHRvIG90aGVyIGZ1bmN0aW9ucyB1bmxlc3MgaXQgaXMgcGFzc2VkIHRvIHRob3NlIGZ1bmN0aW9ucyBieSB2YWx1ZSBvciBieSBhZGRyZXNzKHJlZmVyZW5jZSkuIDwvYnI+DQril48gRWxzZSwgd2UgaGF2ZSB0byBkZWNsYXJlIHN0cnVjdHVyZSB2YXJpYWJsZSBhcyBnbG9iYWwgdmFyaWFibGUuIFRoYXQgbWVhbnMsIHN0cnVjdHVyZSB2YXJpYWJsZSBzaG91bGQgYmUgZGVjbGFyZWQgb3V0c2lkZSB0aGUgbWFpbiBmdW5jdGlvbi4gU28sIHRoaXMgc3RydWN0dXJlIHdpbGwgYmUgdmlzaWJsZSB0byBhbGwgdGhlIGZ1bmN0aW9ucyBpbiBhIEMgcHJvZ3JhbS4gPC9icj4NCjxiPlBhc3Npbmcgc3RydWN0dXJlIHRvIGZ1bmN0aW9uIGluIEM6PC9iPjwvYnI+DQpJdCBjYW4gYmUgZG9uZSBpbiBiZWxvdyAzIHdheXMuIDwvYnI+DQoxLiBQYXNzaW5nIHN0cnVjdHVyZSB0byBhIGZ1bmN0aW9uIGJ5IHZhbHVlPC9icj4NCjIuIFBhc3Npbmcgc3RydWN0dXJlIHRvIGEgZnVuY3Rpb24gYnkgYWRkcmVzcyhyZWZlcmVuY2UpIDwvYnI+DQozLiBObyBuZWVkIHRvIHBhc3MgYSBzdHJ1Y3R1cmUg4oCTIERlY2xhcmUgc3RydWN0dXJlIHZhcmlhYmxlIGFzIGdsb2JhbDwvYnI+DQo=', 'VG8gYWNjZXB0IHN0dWRlbnQgaW5mb3JtYXRpb24gZnJvbSB1c2VyIGFuZCBwZXJmb3JtIHNhaWQgb3BlcmF0aW9uIG9uDQpzdHVkZW50cyBkYXRhYmFzZS4gSXQgaXMgZXhwZWN0ZWQgdG8gdXNlIG1hY3JvIGNvbmNlcHQgaW4geW91ciBwcm9ncmFtLjwvYnI+', 'Tk8=', 0, 4, ''),
(19, 12, 2, 'PGgzPjxmb250IHNpemU9IjYiPjxiPkJVQkJMRSBTT1JUPC9iPjwvZm9udD48L2gzPg==', 'PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7bGluZS1oZWlnaHQ6MTE1JTsNCmZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Ozttc28tYXNjaWktdGhlbWUtZm9udDptaW5vci1sYXRpbjttc28tZmFyZWFzdC1mb250LWZhbWlseToNCkNhbGlicmk7bXNvLWZhcmVhc3QtdGhlbWUtZm9udDptaW5vci1sYXRpbjttc28taGFuc2ktdGhlbWUtZm9udDptaW5vci1sYXRpbjsNCm1zby1iaWRpLWZvbnQtZmFtaWx5OiZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90Ozttc28tYmlkaS10aGVtZS1mb250Om1pbm9yLWJpZGk7DQptc28tYW5zaS1sYW5ndWFnZTpFTi1JTjttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzttc28tYmlkaS1sYW5ndWFnZTpBUi1TQSI+QnViYmxlDQpzb3J0IGFsZ29yaXRobSBzdGFydHMgYnkgY29tcGFyaW5nIHRoZSBmaXJzdCB0d28gZWxlbWVudHMgb2YgYW4gYXJyYXkgYW5kDQpzd2FwcGluZyBpZiBuZWNlc3NhcnksIGkuZS4sIGlmIHlvdSB3YW50IHRvIHNvcnQgdGhlIGVsZW1lbnRzIG9mIGFycmF5IGluDQphc2NlbmRpbmcgb3JkZXIgYW5kIGlmIHRoZSBmaXJzdCBlbGVtZW50IGlzIGdyZWF0ZXIgdGhhbiBzZWNvbmQgdGhlbiwgeW91IG5lZWQNCnRvIHN3YXAgdGhlIGVsZW1lbnRzIGJ1dCwgaWYgdGhlIGZpcnN0IGVsZW1lbnQgaXMgc21hbGxlciB0aGFuIHNlY29uZCwgeW91DQptdXN0bid0IHN3YXAgdGhlIGVsZW1lbnQuIFRoZW4sIGFnYWluIHNlY29uZCBhbmQgdGhpcmQgZWxlbWVudHMgYXJlIGNvbXBhcmVkDQphbmQgc3dhcHBlZCBpZiBpdCBpcyBuZWNlc3NhcnkgYW5kIHRoaXMgcHJvY2VzcyBnbyBvbiB1bnRpbCBsYXN0IGFuZCBzZWNvbmQNCmxhc3QgZWxlbWVudCBpcyBjb21wYXJlZCBhbmQgc3dhcHBlZC4gVGhpcyBjb21wbGV0ZXMgdGhlIGZpcnN0IHN0ZXAgb2YgYnViYmxlDQpzb3J0Ljwvc3Bhbj4JCQkJCQkJCQkJCTxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7bGluZS1oZWlnaHQ6MTE1JTsNCmZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Ozttc28tYXNjaWktdGhlbWUtZm9udDptaW5vci1sYXRpbjttc28tZmFyZWFzdC1mb250LWZhbWlseToNCkNhbGlicmk7bXNvLWZhcmVhc3QtdGhlbWUtZm9udDptaW5vci1sYXRpbjttc28taGFuc2ktdGhlbWUtZm9udDptaW5vci1sYXRpbjsNCm1zby1iaWRpLWZvbnQtZmFtaWx5OiZxdW90O1RpbWVzIE5ldyBSb21hbiZxdW90Ozttc28tYmlkaS10aGVtZS1mb250Om1pbm9yLWJpZGk7DQptc28tYW5zaS1sYW5ndWFnZTpFTi1JTjttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzttc28tYmlkaS1sYW5ndWFnZTpBUi1TQSI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTFwdDsgbGluZS1oZWlnaHQ6IDExNSU7Ij5JZg0KdGhlcmUgYXJlIG4gZWxlbWVudHMgdG8gYmUgc29ydGVkIHRoZW4sIHRoZSBwcm9jZXNzIG1lbnRpb25lZCBhYm92ZSBzaG91bGQgYmUNCnJlcGVhdGVkIG4tMSB0aW1lcyB0byBnZXQgcmVxdWlyZWQgcmVzdWx0LiBCdXQsIGZvciBiZXR0ZXIgcGVyZm9ybWFuY2UsIGluDQpzZWNvbmQgc3RlcCwgbGFzdCBhbmQgc2Vjb25kIGxhc3QgZWxlbWVudHMgYXJlIG5vdCBjb21wYXJlZCBiZWNhdXNlLCB0aGUgcHJvcGVyDQplbGVtZW50IGlzIGF1dG9tYXRpY2FsbHkgcGxhY2VkIGF0IGxhc3QgYWZ0ZXIgZmlyc3Qgc3RlcC4gU2ltaWxhcmx5LCBpbiB0aGlyZA0Kc3RlcCwgbGFzdCBhbmQgc2Vjb25kIGxhc3QgYW5kIHNlY29uZCBsYXN0IGFuZCB0aGlyZCBsYXN0IGVsZW1lbnRzIGFyZSBub3QNCmNvbXBhcmVkIGFuZCBzbyBvbi4mbmJzcDs8L3NwYW4+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2xpbmUtaGVpZ2h0OjExNSU7DQpmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDs7bXNvLWFzY2lpLXRoZW1lLWZvbnQ6bWlub3ItbGF0aW47bXNvLWZhcmVhc3QtZm9udC1mYW1pbHk6DQpDYWxpYnJpO21zby1mYXJlYXN0LXRoZW1lLWZvbnQ6bWlub3ItbGF0aW47bXNvLWhhbnNpLXRoZW1lLWZvbnQ6bWlub3ItbGF0aW47DQptc28tYmlkaS1mb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9tYW4mcXVvdDs7bXNvLWJpZGktdGhlbWUtZm9udDptaW5vci1iaWRpOw0KbXNvLWFuc2ktbGFuZ3VhZ2U6RU4tSU47bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7bXNvLWJpZGktbGFuZ3VhZ2U6QVItU0EiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDExcHQ7IGxpbmUtaGVpZ2h0OiAxMTUlOyI+PHAgY2xhc3M9Ik1zb05vcm1hbCI+QnViYmxlIFNvcnQgaXMgdGhlIHNpbXBsZXN0IHNvcnRpbmcgYWxnb3JpdGhtIHRoYXQgd29ya3MgYnkNCnJlcGVhdGVkbHkgc3dhcHBpbmcgdGhlIGFkamFjZW50IGVsZW1lbnRzIGlmIHRoZXkgYXJlIGluIHdyb25nIG9yZGVyLiA8bzpwPjwvbzpwPjwvcD4NCg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RXhhbXBsZTogPG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkZpcnN0IFBhc3M6PG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggNSAxIDQgMiA4ICkg4oCTJmd0OyAoIDEgNSA0IDIgOCApLCBIZXJlLCBhbGdvcml0aG0gY29tcGFyZXMNCnRoZSBmaXJzdCB0d28gZWxlbWVudHMsIGFuZCBzd2FwcyBzaW5jZSA1ICZndDsgMS4gPG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggMSA1IDQgMiA4ICkg4oCTJmd0OyZuYnNwOyAoDQoxIDQgNSAyIDggKSwgU3dhcCBzaW5jZSA1ICZndDsgNDxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4oIDEgNCA1IDIgOCApIOKAkyZndDsmbmJzcDsgKA0KMSA0IDIgNSA4ICksIFN3YXAgc2luY2UgNSAmZ3Q7IDI8bzpwPjwvbzpwPjwvcD4NCg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+KCAxIDQgMiA1IDggKSDigJMmZ3Q7ICggMSA0IDIgNSA4ICksIE5vdywgc2luY2UgdGhlc2UgZWxlbWVudHMNCmFyZSBhbHJlYWR5IGluIG9yZGVyICg4ICZndDsgNSksIGFsZ29yaXRobSBkb2VzIG5vdCBzd2FwIHRoZW0uIDxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+U2Vjb25kIFBhc3M6PG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggMSA0IDIgNSA4ICkg4oCTJmd0OyAoIDEgNCAyIDUgOCApIDxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4oIDEgNCAyIDUgOCApIOKAkyZndDsgKCAxIDIgNCA1IDggKSwgU3dhcCBzaW5jZSA0ICZndDsgMjxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJzcDsoIDEgMiA0IDUgOCApIOKAkyZndDsgKA0KMSAyIDQgNSA4ICkgPG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggMSAyIDQgNSA4ICkg4oCTJmd0OyZuYnNwOyAoDQoxIDIgNCA1IDggKSA8bzpwPjwvbzpwPjwvcD4NCg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Tm93LCB0aGUgYXJyYXkgaXMgYWxyZWFkeSBzb3J0ZWQsIGJ1dCBvdXIgYWxnb3JpdGhtIGRvZXMgbm90DQprbm93IGlmIGl0IGlzIGNvbXBsZXRlZC4gVGhlIGFsZ29yaXRobSBuZWVkcyBvbmUgd2hvbGUgcGFzcyB3aXRob3V0IGFueSBzd2FwIHRvDQprbm93IGl0IGlzIHNvcnRlZC4gPG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoaXJkIFBhc3M6IDxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4oIDEgMiA0IDUgOCApIOKAkyZndDsgKCAxIDIgNCA1IDggKSA8bzpwPjwvbzpwPjwvcD4NCg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+KCAxIDIgNCA1IDggKSDigJMmZ3Q7ICggMSAyIDQgNSA4ICkgPG86cD48L286cD48L3A+DQoNCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggMSAyIDQgNSA4ICkg4oCTJmd0OyAoIDEgMiA0IDUgOCApIDxvOnA+PC9vOnA+PC9wPg0KDQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4oIDEgMiA0IDUgOCApIOKAkyZndDsgKCAxIDIgNCA1IDggKTxvOnA+PC9vOnA+PC9wPjwvc3Bhbj48L3NwYW4+PC9kaXY+', 'PHAgY2xhc3M9Ik1zb05vcm1hbCI+VG8gYWNjZXB0IHN0dWRlbnRzIHJlY29yZCBmcm9tIHVzZXIgYW5kIHNvcnQgdGhlc2UgcmVjb3Jkcw0KdXNpbmcgYnViYmxlIHNvcnQgYW5kIHNlYXJjaCB1c2luZyBsaW5lYXIgc2VhcmNoLjxvOnA+PC9vOnA+PC9wPgkJCQkJCQkJCQkJ', 'c2ltdWxhdGlvbi9idWJibGUtc29ydC1hbGdvcml0aG0vaW5kZXguaHRtbA==', 0, 12, ''),
(21, 1, 2, 'dGl0bGUgb2YgZXhwZXJpbWVudA==', 'dGhlb3J5IG9mIGV4cGVyaW1lbnQ=', 'b2JqZWN0aXZlIG9mIGV4cGVyaW1lbnQ=', 'cGF0aA==', 0, 1, 'dGl0bGUgb2YgZXhwZXJpbWVudA==');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `department` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `name`, `department`, `semester`) VALUES
(2, 'Fundamentals of Data Structure and Files', 1, 3),
(3, 'Data Structures and Files', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(10, 3, 'q1', 'o1', 'o1', 'o1', 'o1', 1),
(11, 3, 'q2', 'o2', 'o2', 'o2', 'o2', 2),
(12, 3, 'q3', 'o3', 'o3', 'o3', 'o3', 3),
(13, 3, 'q4', 'o4', 'o4', 'o4', 'o4', 4),
(14, 3, 'q5', 'o5', 'o5', 'o5', 'o5', 4),
(15, 5, 'questiion', 'op1', 'op2', 'op3', 'op4', 1),
(16, 5, 'questiion', 'questiion', 'questiion', 'questiion', 'questiion', 4);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_evalution`
--

CREATE TABLE `quiz_evalution` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_evalution`
--

INSERT INTO `quiz_evalution` (`id`, `stud_id`, `quiz_id`, `marks`) VALUES
(1, 213, 3, 100),
(5, 213, 5, 100);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `path`) VALUES
(1, 'Add Staff', 'user_management/add_staff.php'),
(2, 'Add Student', 'user_management/add_student.php'),
(3, 'Add Lab', 'create_lab/add_lab.php'),
(4, 'Add Experiment List', 'create_lab/add_exp.php'),
(5, 'Add Page', 'create_lab/add_page.php'),
(6, 'Modify Page', 'create_lab/modify_page.php'),
(7, 'Modify Experiments', 'create_lab/modify_exp.php'),
(8, 'Add Quiz', 'create_lab/add_quiz.php');

-- --------------------------------------------------------

--
-- Table structure for table `role_assign`
--

CREATE TABLE `role_assign` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_assign`
--

INSERT INTO `role_assign` (`role_id`, `user_id`) VALUES
(1, 216),
(2, 216),
(3, 216),
(4, 216),
(5, 216),
(6, 216),
(7, 216);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `designation`, `department`) VALUES
(34, 'H.D.Gadade', 'Asst. Profesor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stimulation_type`
--

CREATE TABLE `stimulation_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stimulation_type`
--

INSERT INTO `stimulation_type` (`id`, `type`, `action`) VALUES
(1, 'Image', '<img />'),
(2, 'GIF', '<img>'),
(3, 'Webpage', 'page'),
(4, 'Script', 'script');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `prn` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` int(11) NOT NULL,
  `current_semester` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `prn`, `name`, `mobile_no`, `email`, `department`, `current_semester`, `status`) VALUES
(205, 1441011, 'Abhay', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(206, 1441012, 'Amit', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(207, 1441013, 'Aman', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(208, 1441014, 'Amar', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(209, 1441015, 'Arav', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(210, 1441016, 'Arun', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(211, 1441017, 'Anil', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(212, 1441018, 'Ajay', '9864521', 'abc@gmail.asc', 2, 1, 'ONGOING'),
(213, 1441038, 'Prajakta Arun Patil', '8625857123', 'prajaktapatil1208@gmail.com', 1, 3, 'ONGOING'),
(214, 1441019, 'Aishwarya Viyasingh Jadhav', '8625857123', 'aishwaryajadhav125@gmail.asc', 1, 3, 'ONGOING'),
(215, 1441009, 'Shraddha Chaudhari', '8625857123', 'abc@gmail.asc', 1, 3, 'ONGOING'),
(216, 1441001, 'Swati Valvi', '8625857123', 'abc@gmail.asc', 1, 3, 'ONGOING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logout_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `login_IP` int(100) UNSIGNED DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `login_time`, `logout_time`, `login_IP`, `user_type`, `type_id`) VALUES
(216, 'superadmin', 'MTdjNDUyMGY2Y2ZkMWFiNTNkODc0NWU4NDY4MWViNDk=', '2018-03-14 14:31:21', '2018-03-14 14:31:21', 0, 1, 0),
(221, '1441012', 'YmYwYzQyZmNjMWUxN2ZjYzJkN2Y4YTFmNDljN2RiZWE=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 206),
(220, '1441011', 'OWQxODFlYWE4OGFkMWMyMjZmODJlNDc1NmNiM2U2ZGM=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 205),
(222, '1441013', 'MTQzZjBhMGI4NTdmMDlkY2U0NDllNWM4YjVjYWQ0NGU=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 207),
(223, '1441014', 'NDAyOTJiM2JhYjdiYmIwOTkyOGEwNzAxNWE1ZTc0Y2Y=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 208),
(224, '1441015', 'NjliZDRmZWZjYWNkMWU0MWFlYTFkYzNiMGFlYzFlNWU=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 209),
(225, '1441016', 'NjQxNjg4NmNmOTQxMDMwNDJkZDI3NDQwNGFmM2EwNzU=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 210),
(226, '1441017', 'YmI5N2FmNDA5YmI0MDc4NTRkOGU5YjRiYzg2MDVhNWY=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 211),
(227, '1441018', 'MGIzOTU2MjdmZjY0ZmUxMzlmZDJjNTQ1ODc4YmYzMmU=', '2017-09-29 15:03:50', '2017-09-29 15:03:50', NULL, 3, 212),
(228, '1441038', 'ZmRkZjU1OTg3Y2RmZWQzYzhlMDMwZTA0MjY3Yjk5Mjg=', '2018-03-14 14:31:29', '2018-03-14 14:32:29', 0, 3, 213),
(229, '1441019', 'Yzc1YTViNjgwZjljMjY2NTI4NWE5M2NjYzg4YmZmMDA=', '2018-01-17 10:34:04', '2018-01-17 10:34:04', 0, 3, 214),
(230, '1441009', 'ZDE4ZWMzMWRkZTA0ZjJjYTVkZWViMThiMGUyMDk4MDE=', '2017-10-08 15:51:02', '2017-10-08 15:51:02', NULL, 3, 215),
(231, '1441001', 'OWU1NDgzY2Q3NjcyMWM5OTBhMjdhYzg5N2YwMjYxN2Y=', '2017-10-08 15:51:02', '2017-10-08 15:51:02', NULL, 3, 216),
(232, 'comp_hdg', 'MzAyY2M4YmM0MWYzYzk2ZWYxNGFlMjdjYzcwNmM3OGI=', '2018-02-23 06:39:47', '2018-02-23 06:39:47', NULL, 2, 34);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type_name`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_staff`
--
ALTER TABLE `assign_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiment_details`
--
ALTER TABLE `experiment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_evalution`
--
ALTER TABLE `quiz_evalution`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_assign`
--
ALTER TABLE `role_assign`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stimulation_type`
--
ALTER TABLE `stimulation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prn` (`prn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username_2` (`username`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_staff`
--
ALTER TABLE `assign_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `experiment_details`
--
ALTER TABLE `experiment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quiz_evalution`
--
ALTER TABLE `quiz_evalution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role_assign`
--
ALTER TABLE `role_assign`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `stimulation_type`
--
ALTER TABLE `stimulation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
