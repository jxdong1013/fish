﻿using System;
using System.Collections.Generic;
using System.Text;

namespace FishEntity
{
    public class ProductConfirmVo : ProductQuoteVo
    {
        private string _confirmdate;
        private decimal _confirmsgsweight;
        private int _confirmsgsquantity;
        private decimal _confirmdollars;
        private decimal _confirmrmb;
        private string _confirmagentcode;
        private string _confirmagent;
        private string _confirmlinkmancode;
        private string _confirmlinkman;
        private string _confirmproductyear;
        private string _confirmproductdate;
        private string _confirmlife;
        private string _confirmsaildate;


        /// <summary>
        /// 
        /// </summary>
        public string confirmdate
        {
            set { _confirmdate = value; }
            get { return _confirmdate; }
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal confirmsgsweight
        {
            set { _confirmsgsweight = value; }
            get { return _confirmsgsweight; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int confirmsgsquantity
        {
            set { _confirmsgsquantity = value; }
            get { return _confirmsgsquantity; }
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal confirmdollars
        {
            set { _confirmdollars = value; }
            get { return _confirmdollars; }
        }
        /// <summary>
        /// 
        /// </summary>
        public decimal confirmrmb
        {
            set { _confirmrmb = value; }
            get { return _confirmrmb; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmagentcode
        {
            set { _confirmagentcode = value; }
            get { return _confirmagentcode; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmagent
        {
            set { _confirmagent = value; }
            get { return _confirmagent; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmlinkmancode
        {
            set { _confirmlinkmancode = value; }
            get { return _confirmlinkmancode; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmlinkman
        {
            set { _confirmlinkman = value; }
            get { return _confirmlinkman; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmproductyear
        {
            set { _confirmproductyear = value; }
            get { return _confirmproductyear; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmproductdate
        {
            set { _confirmproductdate = value; }
            get { return _confirmproductdate; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmlife
        {
            set { _confirmlife = value; }
            get { return _confirmlife; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string confirmsaildate
        {
            set { _confirmsaildate = value; }
            get { return _confirmsaildate; }
        }
    }
}
