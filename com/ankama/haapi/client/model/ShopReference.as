package com.ankama.haapi.client.model
{
   public class ShopReference
   {
       
      
      public var description:String = null;
      
      public var name:String = null;
      
      public var free:Boolean = false;
      
      public var quantity:Number = 0;
      
      public var type:String = null;
      
      public var image:String = null;
      
      public var image_big:String = null;
      
      public var reference_accountstatus:ShopReferenceTypeAccountStatus = null;
      
      private var _reference_icegift_obj_class:Array = null;
      
      public var reference_icegift:Vector.<ShopReferenceTypeIceGift>;
      
      private var _reference_virtualgift_obj_class:Array = null;
      
      public var reference_virtualgift:Vector.<ShopReferenceTypeVirtualGift>;
      
      private var _reference_kard_obj_class:Array = null;
      
      public var reference_kard:Vector.<ShopReferenceTypeKard>;
      
      private var _reference_krosmaster_obj_class:Array = null;
      
      public var reference_krosmaster:Vector.<ShopReferenceTypeKrosmaster>;
      
      public var reference_nothing:ShopReferenceTypeNothing = null;
      
      public var reference_tactilewars:ShopReferenceTypeTactilewars = null;
      
      public var reference_virtualsubscriptionlevel:ShopReferenceTypeVirtualSubscriptionLevel = null;
      
      public var reference_video:ShopReferenceTypeVideo = null;
      
      public var reference_music:ShopReferenceTypeMusic = null;
      
      public var reference_flag:ShopReferenceTypeFlag = null;
      
      public var reference_chartransfer:ShopReferenceTypeCharTransfer = null;
      
      public var reference_digitalcomic:ShopReferenceTypeDigitalComic = null;
      
      public var reference_premium:ShopReferenceTypePremium = null;
      
      public var reference_recurringvirtualsubscription:ShopReferenceTypeRecurringVirtualSubscription = null;
      
      public var reference_ogrine:ShopReferenceTypeOgrine = null;
      
      public var reference_gameaction:ShopReferenceTypeGameAction = null;
      
      public function ShopReference()
      {
         this.reference_icegift = new Vector.<ShopReferenceTypeIceGift>();
         this.reference_virtualgift = new Vector.<ShopReferenceTypeVirtualGift>();
         this.reference_kard = new Vector.<ShopReferenceTypeKard>();
         this.reference_krosmaster = new Vector.<ShopReferenceTypeKrosmaster>();
         super();
      }
      
      public function toString() : String
      {
         var str:String = "ShopReference: ";
         str = str + (" (description: " + this.description + ")");
         str = str + (" (name: " + this.name + ")");
         str = str + (" (free: " + this.free + ")");
         str = str + (" (quantity: " + this.quantity + ")");
         str = str + (" (type: " + this.type + ")");
         str = str + (" (image: " + this.image + ")");
         str = str + (" (image_big: " + this.image_big + ")");
         str = str + (" (reference_accountstatus: " + this.reference_accountstatus + ")");
         str = str + (" (reference_icegift: " + this.reference_icegift + ")");
         str = str + (" (reference_virtualgift: " + this.reference_virtualgift + ")");
         str = str + (" (reference_kard: " + this.reference_kard + ")");
         str = str + (" (reference_krosmaster: " + this.reference_krosmaster + ")");
         str = str + (" (reference_nothing: " + this.reference_nothing + ")");
         str = str + (" (reference_tactilewars: " + this.reference_tactilewars + ")");
         str = str + (" (reference_virtualsubscriptionlevel: " + this.reference_virtualsubscriptionlevel + ")");
         str = str + (" (reference_video: " + this.reference_video + ")");
         str = str + (" (reference_music: " + this.reference_music + ")");
         str = str + (" (reference_flag: " + this.reference_flag + ")");
         str = str + (" (reference_chartransfer: " + this.reference_chartransfer + ")");
         str = str + (" (reference_digitalcomic: " + this.reference_digitalcomic + ")");
         str = str + (" (reference_premium: " + this.reference_premium + ")");
         str = str + (" (reference_recurringvirtualsubscription: " + this.reference_recurringvirtualsubscription + ")");
         str = str + (" (reference_ogrine: " + this.reference_ogrine + ")");
         str = str + (" (reference_gameaction: " + this.reference_gameaction + ")");
         return str;
      }
   }
}
