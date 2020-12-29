package com.ankama.haapi.client.model
{
   public class ShopArticle#468
   {
      
      public static const AvailabilityEnum_NORMAL:String = "NORMAL";
      
      public static const AvailabilityEnum_PREORDER:String = "PREORDER";
      
      public static const AvailabilityEnum_SOON_AVAILABLE:String = "SOON_AVAILABLE";
       
      
      public var id:Number = 0;
      
      public var key:String = null;
      
      public var name:String = null;
      
      public var subtitle:String = null;
      
      public var description:String = null;
      
      public var currency:String = null;
      
      public var original_price:Number = 0.0;
      
      public var price:Number = 0.0;
      
      public var startdate:Date = null;
      
      public var enddate:Date = null;
      
      public var showCountDown:Boolean = false;
      
      public var stock:Number = 0;
      
      public var is_free:Boolean = false;
      
      private var _image_obj_class:Array = null;
      
      public var image:Vector.<ShopImage>;
      
      private var _references_obj_class:Array = null;
      
      public var references:Vector.<ShopReference>;
      
      private var _promo_obj_class:Array = null;
      
      public var promo:Vector.<ShopPromo>;
      
      private var _media_obj_class:Array = null;
      
      public var media:Vector.<ShopMedia>;
      
      private var _metas_obj_class:Array = null;
      
      public var metas:Vector.<ShopMetaGroup>;
      
      private var _pricelist_obj_class:Array = null;
      
      public var pricelist:Vector.<ShopPrice>;
      
      public var most_precise_category_id:Number = 0;
      
      public var flag:ShopFlag = null;
      
      public var availability:String = null;
      
      public var marketing_display:ShopMarketingDisplay = null;
      
      public function ShopArticle#468()
      {
         this.image = new Vector.<ShopImage>();
         this.references = new Vector.<ShopReference>();
         this.promo = new Vector.<ShopPromo>();
         this.media = new Vector.<ShopMedia>();
         this.metas = new Vector.<ShopMetaGroup>();
         this.pricelist = new Vector.<ShopPrice>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopArticle: ";
         str = str + (" (id: " + this.id + ")");
         str = str + (" (key: " + this.key + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (subtitle: " + this.subtitle + ")");
         str = str + (" (description: " + this.description + ")");
         str = str + (" (currency: " + this.currency + ")");
         str = str + (" (original_price: " + this.original_price + ")");
         str = str + (" (price: " + this.price + ")");
         str = str + (" (startdate: " + this.startdate + ")");
         str = str + (" (enddate: " + this.enddate + ")");
         str = str + (" (showCountDown: " + this.showCountDown + ")");
         str = str + (" (stock: " + this.stock + ")");
         str = str + (" (is_free: " + this.is_free + ")");
         str = str + (" (image: " + this.image + ")");
         str = str + (" (references: " + this.references + ")");
         str = str + (" (promo: " + this.promo + ")");
         str = str + (" (media: " + this.media + ")");
         str = str + (" (metas: " + this.metas + ")");
         str = str + (" (pricelist: " + this.pricelist + ")");
         str = str + (" (most_precise_category_id: " + this.most_precise_category_id + ")");
         str = str + (" (flag: " + this.flag + ")");
         str = str + (" (availability: " + this.availability + ")");
         str = str + (" (marketing_display: " + this.marketing_display + ")");
         return str;
      }
   }
}
