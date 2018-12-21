
class 'GUIMVGAChangelog' (Window)

local kWebsite = "https://therealnin.github.io/MVGA/index.html"
local kTextureName = "*changelog_webpage_render"
GUIMVGAChangelog.URL = "https://therealnin.github.io/MVGA/index.html"
GUIMVGAChangelog.titleText = "MVGA Changelog"

function GUIMVGAChangelog:Initialize()
	Window.Initialize(self)
    
	self:SetWindowName("Changelog")
	self:SetInitialVisible(true)
	self:DisableResizeTile()
	self:DisableSlideBar()
	self:DisableContentBox()
	self:SetLayer(kGUILayerMainMenuDialogs)

	self:AddEventCallbacks{
		OnEscape = function(self)
			self:SetIsVisible(false)
            GetGUIMainMenu():MaybeOpenPopup()
		end
	}

	-- Hook the close...
	self.titleBar.closeButton:AddEventCallbacks( { 
		OnClick = function(self)
			if self.windowHandle then
				self.windowHandle:SetIsVisible(false)
				GetGUIMainMenu():MaybeOpenPopup()
			end
		end
	} )
        

	self.title = CreateMenuElement(self:GetTitleBar(), "Font")
	self.title:SetText(self.titleText)
	self.title:SetCSSClass("title")

    
	self.webContainer = CreateMenuElement(self, "Image")
	self.webContainer:SetBackgroundTexture(kTextureName)
	self.webContainer:SetCSSClass("web")
    self.webContainer:SetBorderColor(Color(79/255, 126/255, 145/255))

	self.webContainer.webView = Client.CreateWebView(self.webContainer:GetWidth(), self.webContainer:GetHeight())
	self.webContainer.webView:SetTargetTexture(kTextureName)
	self.webContainer.webView:LoadUrl(self.URL)
    self.webContainer.webView:SetGreenScreen(true)
    
	self.webContainer:AddEventCallbacks{
		OnMouseIn = function(self)
			local windowManager = GetWindowManager()
			windowManager:HandleFocusBlur(windowManager:GetActiveWindow(), self)
		end,
		OnMouseOut = function(self)
			GetWindowManager():ClearActiveElement(self)
		end,
		OnMouseOver = function(self)
			local mouseX, mouseY = Client.GetCursorPosScreen()
			local _, withinX, withinY = GUIItemContainsPoint(self:GetBackground(), mouseX, mouseY)
			self.webView:OnMouseMove(withinX, withinY)
		end,
		OnMouseUp = function(self)
			self.webView:OnMouseUp(0)
		end,
		OnMouseDown = function(self)
			self.webView:OnMouseDown(0)
		end,
		OnMouseWheel = function(self, up)
			if up then
				self.webView:OnMouseWheel(30, 0)
				MainMenu_OnSlide()
			else
				self.webView:OnMouseWheel(-30, 0)
				MainMenu_OnSlide()
			end
		end
	}

	self.footer = CreateMenuElement(self, "Image")
	self.footer:SetCSSClass("footer")
    
    self.linkButton = CreateMenuElement(self, "Link")
    self.linkButton:SetBackgroundColor(Color(0,0,0,1))
    self.linkButton:SetText("Report bug and/or leave feedback")
    self.linkButton:SetTextPaddingTop(5)
    self.linkButton:SetTextPaddingLeft(5)
    self.linkButton:SetBackgroundSize( Vector(self.webContainer:GetWidth(), 30, 0) )
    self.linkButton:SetTopOffset(-31 )
    self.linkButton:SetLeftOffset(-self.webContainer:GetWidth() )
    self.linkButton:EnableHighlighting()
	self.linkButton:SetAnchor(GUIItem.Right, GUIItem.Bottom)
	
    --self.linkButton:SetBackgroundPosition(Vector( -width-rightMargin+logoWidth+buttonSpacing, y, 0))
    --self.linkButton:SetBackgroundTexture("ui/button_store.dds")
    self.linkButton:AddEventCallbacks{
        OnClick = function()
            Log("Trying to show https://github.com/TheRealNin/MVGA/issues")
            Client.ShowWebpage("https://github.com/TheRealNin/MVGA/issues")
        end,
    }
    
end




function GUIMVGAChangelog:OnEscape()
	self:SetIsVisible(false)
end

function GUIMVGAChangelog:GetTagName()
	return "changelog"
end
