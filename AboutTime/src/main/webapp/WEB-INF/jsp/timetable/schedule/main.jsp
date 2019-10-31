<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<body class="registerForm">
	<div class="row">
		<div
			class="col-md-6 col-md-offset-3 col-sm-12  register-box combination-box">
			<div class="reg-header">
				<h2>시간표 조합</h2>
			</div>
			<form class="form-horizontal" action="/timetable/schedule/list.do" method="post">
				<div class="form-group">
					<label class="col-md-4 control-label">목표 학점</label>
					<div class="col-md-3">
						<select name="credit" class="form-control">
							<option value=0>0</option>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
							<option value=5>5</option>
							<option value=6>6</option>
							<option value=7>7</option>
							<option value=8>8</option>
							<option value=9>9</option>
							<option value=10>10</option>
							<option value=11>11</option>
							<option value=12>12</option>
							<option value=13>13</option>
							<option value=14>14</option>
							<option value=15>15</option>
							<option value=16>16</option>
							<option value=17>17</option>
							<option value=18>18</option>
							<option value=19>19</option>
							<option value=20>20</option>
							<option value=21>21</option>
							<option value=22>22</option>
							<option value=23>23</option>
							<option value=24>24</option>
							<option value=25>25</option>
							<option value=26>26</option>
							<option value=27>27</option>
							<option value=28>28</option>
							<option value=29>29</option>
							<option value=30>30</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">최소 전공 학점</label>
					<div class="col-md-3">
						<select name="major" class="form-control">
							<option value=0>0</option>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
							<option value=5>5</option>
							<option value=6>6</option>
							<option value=7>7</option>
							<option value=8>8</option>
							<option value=9>9</option>
							<option value=10>10</option>
							<option value=11>11</option>
							<option value=12>12</option>
							<option value=13>13</option>
							<option value=14>14</option>
							<option value=15>15</option>
							<option value=16>16</option>
							<option value=17>17</option>
							<option value=18>18</option>
							<option value=19>19</option>
							<option value=20>20</option>
							<option value=21>21</option>
							<option value=22>22</option>
							<option value=23>23</option>
							<option value=24>24</option>
							<option value=25>25</option>
							<option value=26>26</option>
							<option value=27>27</option>
							<option value=28>28</option>
							<option value=29>29</option>
							<option value=30>30</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="col-md-4 control-label">최소 교양 학점</label>
					<div class="col-md-3">
						<select name="liberalArt" class="form-control">
							<option value=0>0</option>
							<option value=1>1</option>
							<option value=2>2</option>
							<option value=3>3</option>
							<option value=4>4</option>
							<option value=5>5</option>
							<option value=6>6</option>
							<option value=7>7</option>
							<option value=8>8</option>
							<option value=9>9</option>
							<option value=10>10</option>
							<option value=11>11</option>
							<option value=12>12</option>
							<option value=13>13</option>
							<option value=14>14</option>
							<option value=15>15</option>
							<option value=16>16</option>
							<option value=17>17</option>
							<option value=18>18</option>
							<option value=19>19</option>
							<option value=20>20</option>
							<option value=21>21</option>
							<option value=22>22</option>
							<option value=23>23</option>
							<option value=24>24</option>
							<option value=25>25</option>
							<option value=26>26</option>
							<option value=27>27</option>
							<option value=28>28</option>
							<option value=29>29</option>
							<option value=30>30</option>
						</select>
					</div>
				</div>
				<button class="btn btn-primary btn-block" type="submit"
					id="register">조합</button>

			</form>
		</div>
	</div>
</body>