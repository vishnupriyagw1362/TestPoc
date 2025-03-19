package com.automation.web.common_utils;

import java.awt.Dimension;
import java.awt.HeadlessException;
import java.awt.Toolkit;
import java.util.Arrays;

import com.automation.web.Report_Utils.ReportManager;
import com.microsoft.playwright.Browser;
import com.microsoft.playwright.BrowserContext;
import com.microsoft.playwright.BrowserType;
import com.microsoft.playwright.Page;
import com.microsoft.playwright.BrowserType.LaunchOptions;
import com.microsoft.playwright.Playwright;
import com.microsoft.playwright.options.Geolocation;

public class BrowserFactory {

    static ThreadLocal<Playwright> tlPlaywright = new ThreadLocal<>();
    static ThreadLocal<Browser> tlBrowser = new ThreadLocal<>();
    static ThreadLocal<BrowserContext> tlBrowserContext = new ThreadLocal<>();
    static ThreadLocal<Page> tlPage = new ThreadLocal<>();

    public static BrowserFactory instance = null;
    public static Playwright playwright;
    public static Browser browse;

    private BrowserFactory() {}

    public static BrowserFactory getInstance() {
        if (instance == null) {
            instance = new BrowserFactory();
        }
        return instance;
    }

    public Playwright getPlaywright() {
        return tlPlaywright.get();
    }

    public Browser getBrowser() {
        return tlBrowser.get();
    }

    public BrowserContext getBrowserContext() {
        return tlBrowserContext.get();
    }

    public Page getPage() {
        return tlPage.get();
    }

    public void setBrowser(String Browser) {
        // Create Playwright instance.
        tlPlaywright.set(Playwright.create());

        // Read the 'headless' property (defaulting to true).
        boolean headless = Boolean.parseBoolean(System.getProperty("headless", "true"));

        switch (Browser.toLowerCase()) {
            case "chromium":
                tlBrowser.set(getPlaywright().chromium().launch(new BrowserType.LaunchOptions().setHeadless(headless)));
                break;
            case "firefox":
                tlBrowser.set(getPlaywright().firefox().launch(new BrowserType.LaunchOptions().setHeadless(headless)));
                break;
            case "safari":
                tlBrowser.set(getPlaywright().webkit().launch(new BrowserType.LaunchOptions().setHeadless(headless)));
                break;
            case "chrome":
                tlBrowser.set(getPlaywright().chromium().launch(
                        new LaunchOptions().setChannel("chrome").setHeadless(headless)));
                break;
            case "edge":
                tlBrowser.set(getPlaywright().chromium().launch(
                        new LaunchOptions().setChannel("msedge").setHeadless(headless)));
                break;
            default:
                System.out.println("Please pass the right browser name...");
                break;
        }

        String dimensions = System.getProperty("Dimension");
        int[] pixels = setDimensions(dimensions);
        tlBrowserContext.set(getBrowser().newContext(
            new Browser.NewContextOptions()
                .setViewportSize(pixels[0], pixels[1])
                .setAcceptDownloads(true)
                .setPermissions(Arrays.asList("geolocation"))
                .setGeolocation(new Geolocation(13.9591, 79.5808))
        ));
        tlPage.set(getBrowserContext().newPage());
    }

    public int[] setDimensions(String dimensions) {
        int width;
        int height;
        if (dimensions.equalsIgnoreCase("default")) {
            try {
                Dimension screensize = Toolkit.getDefaultToolkit().getScreenSize();
                width = (int) screensize.getWidth();
                height = (int) screensize.getHeight();
                System.out.println("Default window size: " + width + " * " + height);
                ReportManager.logInfo("Default window size: " + width + " * " + height);
            } catch (HeadlessException e) {
                // In a headless environment, use a default resolution.
                width = 1920;
                height = 1080;
                System.out.println("Headless environment detected. Using default resolution: " + width + " * " + height);
                ReportManager.logInfo("Headless environment detected. Using default resolution: " + width + " * " + height);
            }
        } else {
            String[] hit = dimensions.split("\\*");
            width = Integer.parseInt(hit[0]);
            height = Integer.parseInt(hit[1]);
            System.out.println("Window size detected: " + width + " * " + height);
            ReportManager.logInfo("Window size detected: " + width + " * " + height);
        }
        return new int[]{width, height};
    }
}
