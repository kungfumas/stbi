<?php

/*=======================================================================*
 * IDNStemmer is a Stemmer Algorithm for Indonesian.		             *
/*************************G-P-L*******************************************
 *                                                                       *
 *  This program is free software: you can redistribute it and/or modify *
 *  it under the terms of the GNU General Public License as published by *
 *  the Free Software Foundation, either version 3 of the License, or    *
 *  (at your option) any later version.                                  *
 *                                                                       *  
 *  This program is distributed in the hope that it will be useful,      *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of       *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
 *  GNU General Public License for more details.                         *
 *                                                                       *
 *  You should have received a copy of the GNU General Public License    *
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.*
 *                                                                       *
 *************************************************************************
 * Copyright 2009 Alfan Farizki Wicaksono [ITB]                          *
 *                Bofandra Muhammad [ITB]                                *
 *************************************************************************
 *************************************************************************/

class IDNStemmer
{
	function IDNStemmer()
	{
	}
	
	function del_prefix($masukan)
	{
		// awalan : ber, bel, be, ke, se, te, ter, me, mem, men, meng, menge, pe, pem, pen, peng, penge, pe, pel, per, memper; Sumber : http://tatabahasabm.tripod.com/tata/awalan.htm
		$masukan=strtolower($masukan);
		$AW1=substr($masukan,0,6);
		if($AW1=="memper")
		{
			$keluaran = substr($masukan,6,strlen($masukan));
		}
		else
		{
			$AW1=substr($masukan,0,3);
			if($AW1=="ber")
			{
				$keluaran = substr($masukan,3,strlen($masukan));
			}
			else
			{
				$AW1=substr($masukan,0,4);
				if($AW1=="bela")
				{
					$keluaran = substr($masukan,3,strlen($masukan));
				}
				else
				{
					$AW1=substr($masukan,0,2);
					if($AW1=="di" )
					{
						$keluaran = substr($masukan,2,strlen($masukan));
					}
					else
					{
						$AW1=substr($masukan,0,2);
						if($AW1=="ke")
						{
							$keluaran = substr($masukan,2,strlen($masukan));
						}
						else
						{
							$AW1=substr($masukan,0,2);
							if($AW1=="ku")
							{
								$keluaran = substr($masukan,2,strlen($masukan));
							}
							else
							{
								$AW1=substr($masukan,0,3);
								if($AW1=="kau")
								{
									$keluaran = substr($masukan,3,strlen($masukan));
								}
								else
								{
									$AW1=substr($masukan,0,2);
									if($AW1=="me")
									{
										$AW1=substr($masukan,0,4);
										if($AW1=="memb")
										{
											$keluaran = substr($masukan,3,strlen($masukan));
										}
										else
										{
											$AW1=substr($masukan,0,4);
											if($AW1=="mend" || $AW1=="menf" || $AW1=="menj")
											{
												$keluaran = substr($masukan,3,strlen($masukan));
											}
											else
											{
												$AW1=substr($masukan,0,4);
												if($AW1=="meny")
												{
													$keluaran = "s".substr($masukan,4,strlen($masukan));
												}
												else
												{
													$AW1=substr($masukan,0,4);
													if($AW1=="meng")
													{
														if(substr($masukan,4,1)=="a" || substr($masukan,4,1)=="e" || substr($masukan,4,1)=="g" || substr($masukan,4,1)=="h" || substr($masukan,4,1)=="i" || substr($masukan,4,1)=="o" || substr($masukan,4,1)=="u")
														{
															$keluaran = substr($masukan,4,strlen($masukan));
														}
														else
														{
															$keluaran = $masukan;
														}
													}
													else
													{
														$AW1=substr($masukan,0,3);
														if($AW1=="men")
														{
															$keluaran = "t".substr($masukan,3,strlen($masukan));
														}
														else
														{
															if(substr($masukan,2,1)=="l" || substr($masukan,2,1)=="m" || substr($masukan,2,1)=="n" || substr($masukan,2,1)=="r")
															{
																$keluaran = substr($masukan,2,strlen($masukan));
															}
															else
															{
																$keluaran = $masukan;
															}
														}
													}
												}
											}
										}
									}
									else
									{
										$AW1=substr($masukan,0,2);
										if($AW1=="pe")
										{
											$keluaran = substr($masukan,2,strlen($masukan));
										}
										else
										{
											$AW1=substr($masukan,0,2);
											if($AW1=="se")
											{
												$keluaran = substr($masukan,2,strlen($masukan));
											}
											else
											{
												$AW1=substr($masukan,0,3);
												if($AW1=="ter")
												{
													$keluaran = substr($masukan,3,strlen($masukan));
												}
												else
												{
												/*
													$AW1=substr($masukan,0,3);
													if($AW1=="eka")
													{
														$keluaran = substr($masukan,3,strlen($masukan));
													}
													else
													{
														$AW1=substr($masukan,0,6);
														if($AW1=="ekstra")
														{
															$keluaran = substr($masukan,6,strlen($masukan));
														}
														else
														{
															$AW1=substr($masukan,0,3);
															if($AW1=="eks")
															{
																$keluaran = substr($masukan,3,strlen($masukan));
															}
															else
															{
																$AW1=substr($masukan,0,5);
																if($AW1=="intra")
																{
																	$keluaran = substr($masukan,5,strlen($masukan));
																}
															}
														}
													}*/
													$keluaran = $masukan;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		return $keluaran;
	}
	
	function del_suffix($masukan)
	{
		$masukan=strtolower($masukan);
		$AK = substr($masukan,(strlen($masukan)-3),3);
		if($AK == "nda")
		{
			$keluaran = substr($masukan,0,(strlen($masukan)-3));
		}
		else
		{
			$AK = substr($masukan,(strlen($masukan)-3),3);
			if($AK == "nya")
			{
				$keluaran = substr($masukan,0,(strlen($masukan)-3));
			}
			else
			{
				$AK = substr($masukan,(strlen($masukan)-3),3);
				if($AK == "kan" && strlen($masukan)>5)
				{
					$keluaran = substr($masukan,0,(strlen($masukan)-3));
				}
				else
				{
					$AK = substr($masukan,(strlen($masukan)-2),2);
					if($AK == "an" && strlen($masukan)>5)
					{
						$keluaran = substr($masukan,0,(strlen($masukan)-2));
					}
					else
					{
						$AK = substr($masukan,(strlen($masukan)-2),2);
						if($AK == "ku" && strlen($masukan)>6)
						{
							$keluaran = substr($masukan,0,(strlen($masukan)-2));
						}
						else
						{
							$AK = substr($masukan,(strlen($masukan)-2),2);
							if($AK == "mu" && strlen($masukan)>6)
							{
								$keluaran = substr($masukan,0,(strlen($masukan)-2));
							}
							else
							{
								$AK = substr($masukan,(strlen($masukan)-1),1);
								if($AK == "i" && strlen($masukan)>6)
								{
									$keluaran = substr($masukan,0,(strlen($masukan)-1));
								}
								else
								{
									$keluaran = $masukan;
								}
							}
						}
					}
				}
			}
		}
		return $keluaran;
	}
	
	function doStemming($word)
	{
		$p1 = $this->del_prefix($word);
		$p2 = $this->del_prefix($p1);
		$p3 = $this->del_prefix($p1);
		$s1 = $this->del_suffix($p3);
		$s2 = $this->del_suffix($s1);
		
		return $s2;
	}
}

?>